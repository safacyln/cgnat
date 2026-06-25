import {
  BlockRow,
  Settings,
  generateCsv,
  generateRadiusTxt,
  generateRsc,
  validateRows,
} from "./lib/netmap";

interface RequestBody {
  settings: Settings;
  rows: BlockRow[];
}

interface Env {
  ASSETS: Fetcher;
}

function jsonResponse(body: unknown, status = 200): Response {
  return new Response(JSON.stringify(body), {
    status,
    headers: { "content-type": "application/json; charset=utf-8" },
  });
}

async function handleGenerate(request: Request): Promise<Response> {
  let body: RequestBody;
  try {
    body = await request.json();
  } catch {
    return jsonResponse({ errors: [{ row: -1, messages: ["Geçersiz JSON gövdesi."] }] }, 400);
  }

  const settings = body.settings;
  const rows = body.rows ?? [];

  const settingsErrors: string[] = [];
  if (!settings || typeof settings.outInterface !== "string" || settings.outInterface.trim() === "") {
    settingsErrors.push("Out-interface (VLAN adı) zorunlu.");
  }
  if (!settings || typeof settings.comment !== "string" || settings.comment.trim() === "") {
    settingsErrors.push("Comment alanı zorunlu.");
  }
  if (!settings || !Array.isArray(settings.protocols) || settings.protocols.length === 0) {
    settingsErrors.push("En az bir protokol seçmelisiniz (tcp/udp/icmp).");
  }

  if (settingsErrors.length > 0) {
    return jsonResponse({ errors: [{ row: -1, messages: settingsErrors }] }, 400);
  }

  const { parsed, errors } = validateRows(rows);

  if (errors.length > 0) {
    return jsonResponse({ errors }, 400);
  }

  const rsc = generateRsc(parsed, settings);
  const txt = generateRadiusTxt(parsed);
  const csv = generateCsv(parsed);

  return jsonResponse({ rsc, txt, csv });
}

export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    const url = new URL(request.url);

    if (url.pathname === "/api/generate" && request.method === "POST") {
      return handleGenerate(request);
    }

    return env.ASSETS.fetch(request);
  },
};
