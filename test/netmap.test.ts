import { test } from "node:test";
import assert from "node:assert/strict";
import {
  ipToInt,
  intToIp,
  parseCidr,
  validateRows,
  generateRsc,
  generateRadiusTxt,
  generateCsv,
} from "../src/lib/netmap";

test("ipToInt / intToIp round-trip", () => {
  assert.equal(ipToInt("217.177.0.96"), 217 * 256 ** 3 + 177 * 256 ** 2 + 0 * 256 + 96);
  assert.equal(intToIp(ipToInt("100.48.15.0")), "100.48.15.0");
  assert.equal(intToIp(ipToInt("255.255.255.255")), "255.255.255.255");
});

test("parseCidr computes base and size", () => {
  const c = parseCidr("100.48.15.0/29");
  assert.equal(c.prefix, 29);
  assert.equal(c.size, 8);
  assert.equal(intToIp(c.base), "100.48.15.0");
});

test("validateRows rejects mismatched prefix lengths", () => {
  const { parsed, errors } = validateRows([
    { publicCidr: "217.177.0.96/29", privateCidr: "100.48.15.0/28", portStart: 1000, portWidth: 1500 },
  ]);
  assert.equal(parsed.length, 0);
  assert.equal(errors.length, 1);
  assert.match(errors[0].messages.join(" "), /aynı boyutta/);
});

test("validateRows rejects port range overflowing 65535", () => {
  const { errors } = validateRows([
    { publicCidr: "217.177.0.96/29", privateCidr: "100.48.15.0/29", portStart: 65000, portWidth: 1500 },
  ]);
  assert.equal(errors.length, 1);
  assert.match(errors[0].messages.join(" "), /65535/);
});

test("validateRows enforces total host cap", () => {
  const { errors } = validateRows(
    [{ publicCidr: "217.177.0.0/16", privateCidr: "100.48.0.0/16", portStart: 1000, portWidth: 1500 }],
    65536
  );
  assert.equal(errors.length, 0); // exactly at cap (65536 hosts) is allowed

  const { errors: errors2 } = validateRows(
    [{ publicCidr: "217.177.0.0/15", privateCidr: "100.48.0.0/15", portStart: 1000, portWidth: 1500 }],
    65536
  );
  assert.ok(errors2.length > 0);
});

// First block from imp1.rsc (lines 2-9) and plazaVD_new.txt (lines 1-8)
const FIRST_BLOCK_ROW = {
  publicCidr: "217.177.0.96/29",
  privateCidr: "100.48.15.0/29",
  portStart: 1000,
  portWidth: 1500,
};

test("generateRsc matches imp1.rsc first block field-for-field", () => {
  const { parsed, errors } = validateRows([FIRST_BLOCK_ROW]);
  assert.equal(errors.length, 0);

  const rsc = generateRsc(parsed, {
    outInterface: "vlan_2756",
    comment: "newcgnat",
    protocols: ["udp", "tcp", "icmp"],
  });

  const expected = [
    "/ip firewall nat",
    "add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 protocol=udp src-address=100.48.15.0/29 to-addresses=217.177.0.96/29 to-ports=1000-2499",
    "add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 protocol=tcp src-address=100.48.15.0/29 to-addresses=217.177.0.96/29 to-ports=1000-2499",
    "add action=netmap chain=srcnat comment=newcgnat out-interface=vlan_2756 protocol=icmp src-address=100.48.15.0/29 to-addresses=217.177.0.96/29",
  ].join("\n") + "\n";

  assert.equal(rsc, expected);
});

test("generateRadiusTxt matches plazaVD_new.txt first block exactly", () => {
  const { parsed, errors } = validateRows([FIRST_BLOCK_ROW]);
  assert.equal(errors.length, 0);

  const txt = generateRadiusTxt(parsed);
  const expected = [
    "100.48.15.0 217.177.0.96 1000-2499",
    "100.48.15.1 217.177.0.97 1000-2499",
    "100.48.15.2 217.177.0.98 1000-2499",
    "100.48.15.3 217.177.0.99 1000-2499",
    "100.48.15.4 217.177.0.100 1000-2499",
    "100.48.15.5 217.177.0.101 1000-2499",
    "100.48.15.6 217.177.0.102 1000-2499",
    "100.48.15.7 217.177.0.103 1000-2499",
  ].join("\n") + "\n";

  assert.equal(txt, expected);
});

test("generateCsv includes header and same expansion as txt", () => {
  const { parsed, errors } = validateRows([FIRST_BLOCK_ROW]);
  assert.equal(errors.length, 0);

  const csv = generateCsv(parsed);
  const lines = csv.trim().split("\n");
  assert.equal(lines[0], "private_ip,public_ip,port_range");
  assert.equal(lines[1], "100.48.15.0,217.177.0.96,1000-2499");
  assert.equal(lines.length, 9); // header + 8 hosts
});
