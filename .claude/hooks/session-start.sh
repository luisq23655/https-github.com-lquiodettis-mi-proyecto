#!/bin/bash
# SessionStart: prepara el entorno en la nube y carga el estado del negocio como contexto.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-$(pwd)}"

# 1. Pre-instalar el MCP de Playwright (definido en .mcp.json) para que arranque sin descargar.
if ! command -v playwright-mcp >/dev/null 2>&1; then
  npm install -g @playwright/mcp@latest >/dev/null 2>&1 || echo "Aviso: no se pudo instalar @playwright/mcp" >&2
fi

# 2. Validar los JSON de configuración.
for f in .mcp.json .claude/settings.json; do
  [ -f "$f" ] && python3 -m json.tool "$f" >/dev/null || { [ -f "$f" ] && echo "Aviso: $f no es JSON válido" >&2; }
done

# 3. Contexto para el Director de Operaciones (stdout se añade a la sesión).
hoy=$(date +%Y-%m-%d)
fin="$(date +%Y)-12-31"
dias=$(( ( $(date -d "$fin" +%s) - $(date -d "$hoy" +%s) ) / 86400 ))
echo "## Estado de la operación ($hoy)"
echo "- Días hasta el 31-dic: $dias"
if [ -f clientes/pipeline.md ]; then
  echo "- Pipeline por estado:"
  for estado in nuevo contactado "diagnóstico agendado" "propuesta enviada" ganado; do
    n=$(grep -ci "| $estado |" clientes/pipeline.md || true)
    echo "  - $estado: $n"
  done
fi
if [ -f cerebro/bitacora.md ]; then
  echo "- Última entrada de la bitácora:"
  grep -E '^## 20' cerebro/bitacora.md | tail -1 | sed 's/^/  /'
fi
exit 0
