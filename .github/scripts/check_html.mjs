// Revisa la sintaxis de los <script> en línea de cada HTML versionado.
// Uso: node .github/scripts/check_html.mjs [archivos...]  (sin argumentos usa git ls-files)
import { execFileSync } from "node:child_process";
import { readFileSync, writeFileSync, mkdtempSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";

const files = process.argv.length > 2
  ? process.argv.slice(2)
  : execFileSync("git", ["ls-files", "*.html"], { encoding: "utf8" }).split("\n").filter(Boolean);

const dir = mkdtempSync(join(tmpdir(), "check-html-"));
let failed = 0;

for (const file of files) {
  const html = readFileSync(file, "utf8");
  const scripts = [...html.matchAll(/<script(?![^>]*\bsrc=)([^>]*)>([\s\S]*?)<\/script>/gi)]
    .filter(([, attrs]) => !/type=["']?(application\/(ld\+)?json|text\/template)/i.test(attrs));
  scripts.forEach(([, attrs, code], i) => {
    const ext = /type=["']?module/i.test(attrs) ? "mjs" : "js";
    const tmp = join(dir, `${i}.${ext}`);
    writeFileSync(tmp, code);
    try {
      execFileSync(process.execPath, ["--check", tmp], { stdio: "pipe" });
    } catch (e) {
      failed++;
      console.error(`✗ ${file} (script ${i + 1}):\n${e.stderr.toString()}`);
    }
  });
  console.log(`${failed ? "·" : "✓"} ${file}: ${scripts.length} script(s)`);
}

process.exit(failed ? 1 : 0);
