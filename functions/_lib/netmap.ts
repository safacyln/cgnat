// Pure IP/CIDR math and file generators for the CGNAT netmap + RADIUS tool.
// No Node-only APIs — must run unmodified on the Workers runtime.

export const MAX_TOTAL_HOSTS = 65536;

export interface BlockRow {
  publicCidr: string;
  privateCidr: string;
  portStart: number;
  portWidth: number;
}

export interface Settings {
  outInterface: string;
  comment: string;
  protocols: Array<"udp" | "tcp" | "icmp">;
}

export interface ParsedCidr {
  base: number;
  prefix: number;
  size: number;
}

export interface ParsedRow {
  publicCidr: ParsedCidr;
  privateCidr: ParsedCidr;
  publicCidrStr: string;
  privateCidrStr: string;
  portStart: number;
  portWidth: number;
  portEnd: number;
}

export function ipToInt(ip: string): number {
  const parts = ip.trim().split(".");
  if (parts.length !== 4) {
    throw new Error(`Geçersiz IP adresi: "${ip}"`);
  }
  let result = 0;
  for (const part of parts) {
    if (!/^\d{1,3}$/.test(part)) {
      throw new Error(`Geçersiz IP adresi: "${ip}"`);
    }
    const n = Number(part);
    if (n < 0 || n > 255) {
      throw new Error(`Geçersiz IP adresi: "${ip}"`);
    }
    result = result * 256 + n;
  }
  return result >>> 0;
}

export function intToIp(n: number): string {
  const u = n >>> 0;
  return [
    (u >>> 24) & 255,
    (u >>> 16) & 255,
    (u >>> 8) & 255,
    u & 255,
  ].join(".");
}

export function parseCidr(cidr: string): ParsedCidr {
  const trimmed = cidr.trim();
  const match = /^(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\/(\d{1,2})$/.exec(trimmed);
  if (!match) {
    throw new Error(`Geçersiz CIDR: "${cidr}" (örnek: 217.177.0.96/29)`);
  }
  const prefix = Number(match[2]);
  if (prefix < 0 || prefix > 32) {
    throw new Error(`Geçersiz prefix: "${cidr}"`);
  }
  const base = ipToInt(match[1]);
  const size = prefix === 32 ? 1 : Math.pow(2, 32 - prefix);
  return { base, prefix, size };
}

export function validateRow(row: BlockRow, maxHosts: number = MAX_TOTAL_HOSTS): { parsed?: ParsedRow; errors: string[] } {
  const errors: string[] = [];
  let publicCidr: ParsedCidr | undefined;
  let privateCidr: ParsedCidr | undefined;

  try {
    publicCidr = parseCidr(row.publicCidr);
  } catch (e) {
    errors.push((e as Error).message);
  }
  try {
    privateCidr = parseCidr(row.privateCidr);
  } catch (e) {
    errors.push((e as Error).message);
  }

  if (publicCidr && privateCidr && publicCidr.prefix !== privateCidr.prefix) {
    errors.push(
      `Public blok (/${publicCidr.prefix}) ve private blok (/${privateCidr.prefix}) aynı boyutta olmalı (1:1 netmap eşlemesi için).`
    );
  }

  if (publicCidr && publicCidr.size > maxHosts) {
    errors.push(`Public blok çok büyük (${publicCidr.size} host). Güvenlik sınırı: ${maxHosts}.`);
  }

  if (!Number.isInteger(row.portStart) || row.portStart < 1 || row.portStart > 65535) {
    errors.push(`Başlangıç portu 1-65535 aralığında bir tam sayı olmalı: ${row.portStart}`);
  }
  if (!Number.isInteger(row.portWidth) || row.portWidth < 1) {
    errors.push(`Port aralığı genişliği pozitif bir tam sayı olmalı: ${row.portWidth}`);
  }

  const portEnd = row.portStart + row.portWidth - 1;
  if (Number.isInteger(row.portStart) && Number.isInteger(row.portWidth) && portEnd > 65535) {
    errors.push(`Port aralığı 65535'i aşıyor: ${row.portStart}-${portEnd}`);
  }

  if (errors.length > 0 || !publicCidr || !privateCidr) {
    return { errors };
  }

  return {
    errors: [],
    parsed: {
      publicCidr,
      privateCidr,
      publicCidrStr: row.publicCidr.trim(),
      privateCidrStr: row.privateCidr.trim(),
      portStart: row.portStart,
      portWidth: row.portWidth,
      portEnd,
    },
  };
}

export function validateRows(
  rows: BlockRow[],
  maxTotalHosts: number = MAX_TOTAL_HOSTS
): { parsed: ParsedRow[]; errors: Array<{ row: number; messages: string[] }> } {
  const errors: Array<{ row: number; messages: string[] }> = [];
  const parsed: ParsedRow[] = [];

  if (rows.length === 0) {
    errors.push({ row: -1, messages: ["En az bir blok satırı eklemelisiniz."] });
  }

  rows.forEach((row, idx) => {
    const { parsed: p, errors: rowErrors } = validateRow(row, maxTotalHosts);
    if (rowErrors.length > 0) {
      errors.push({ row: idx, messages: rowErrors });
    } else if (p) {
      parsed.push(p);
    }
  });

  if (errors.length === 0) {
    const totalHosts = parsed.reduce((sum, p) => sum + p.privateCidr.size, 0);
    if (totalHosts > maxTotalHosts) {
      errors.push({
        row: -1,
        messages: [`Toplam ${totalHosts} host üretilecekti, güvenlik sınırı ${maxTotalHosts}. Satır sayısını veya blok boyutlarını azaltın.`],
      });
    }
  }

  return { parsed, errors };
}

const PROTOCOL_ORDER: Array<"udp" | "tcp" | "icmp"> = ["udp", "tcp", "icmp"];

export function generateRsc(rows: ParsedRow[], settings: Settings): string {
  const protocols = PROTOCOL_ORDER.filter((p) => settings.protocols.includes(p));
  const lines: string[] = ["/ip firewall nat"];

  for (const row of rows) {
    for (const proto of protocols) {
      const parts = [
        "add action=netmap",
        "chain=srcnat",
        `comment=${settings.comment}`,
        `out-interface=${settings.outInterface}`,
        `protocol=${proto}`,
        `src-address=${row.privateCidrStr}`,
        `to-addresses=${row.publicCidrStr}`,
      ];
      if (proto !== "icmp") {
        parts.push(`to-ports=${row.portStart}-${row.portEnd}`);
      }
      lines.push(parts.join(" "));
    }
  }

  return lines.join("\n") + "\n";
}

export function generateRadiusTxt(rows: ParsedRow[]): string {
  const lines: string[] = [];
  for (const row of rows) {
    for (let i = 0; i < row.privateCidr.size; i++) {
      const privateIp = intToIp(row.privateCidr.base + i);
      const publicIp = intToIp(row.publicCidr.base + i);
      lines.push(`${privateIp} ${publicIp} ${row.portStart}-${row.portEnd}`);
    }
  }
  return lines.join("\n") + (lines.length > 0 ? "\n" : "");
}

export function generateCsv(rows: ParsedRow[]): string {
  const lines: string[] = ["private_ip,public_ip,port_range"];
  for (const row of rows) {
    for (let i = 0; i < row.privateCidr.size; i++) {
      const privateIp = intToIp(row.privateCidr.base + i);
      const publicIp = intToIp(row.publicCidr.base + i);
      lines.push(`${privateIp},${publicIp},${row.portStart}-${row.portEnd}`);
    }
  }
  return lines.join("\n") + "\n";
}
