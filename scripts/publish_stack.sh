#!/usr/bin/env bash
# Publica el repositorio en GitHub con todo su historial y abre los pull requests apilados de la versión 2.0.0.
# Uso, desde la raíz del repo, con GitHub CLI autenticado (gh auth login) y la rama feature/release-v2 descargada:
#   bash scripts/publish_stack.sh
# Es idempotente: si el repo, una rama o un PR ya existen, los reutiliza.
set -euo pipefail

OWNER="${OWNER:-neiderolaya26}"
REPO="${REPO:-learning}"

# rama | título del PR (se vuelve el commit squash en main) | comportamiento para la plantilla
STACK=(
  "feature/glossary-popovers|feat(rutas): 💬 add plain-language glossary popovers to all learning paths|Agrega el glosario emergente a las cuatro rutas: cada sigla o término técnico queda subrayado y muestra su definición en palabras sencillas al pasar el cursor, tocarlo o enfocarlo con el teclado (294 definiciones)."
  "feature/risk-curricula|feat(riesgo): ✨ align credit risk path with FRM, Imperial, Stanford and Edinburgh|Reestructura la ruta de riesgo de crédito con el temario de GARP FRM, Imperial College, Stanford MS&E 246 y la Universidad de Edimburgo. Agrega la sección de programas, el módulo de mercados de crédito (triángulo de crédito, titularización por tramos y contraparte), referencias académicas por semana y dos preguntas nuevas."
  "feature/paid-media-curricula|feat(paid-media): ✨ align paid media path with Columbia, Wharton and Harvard|Reestructura la ruta de paid media con los programas de Columbia, Wharton y Harvard: sección de programas, niveles por módulo, módulo de experimentos con calculadora de tamaño de muestra, plan de profundización de 10 semanas y dos preguntas nuevas."
  "feature/ia-curricula|feat(ia): ✨ add reference programs to the AI and data science path|Agrega a la ruta de IA y data science la sección de programas de referencia (Harvard, Harvard Extension, Stanford y PUJ) y el equivalente académico de cada semana del plan del módulo 0."
  "feature/finance-curricula|feat(finanzas): ✨ add Imperial and Harvard references to the finance path|Suma Imperial College y el MBA de Harvard a los programas de referencia de la ruta de finanzas, agrega la referencia académica de cada semana del plan y el historial de versiones al pie de las cuatro rutas."
  "feature/release-v2|chore(release): 🔖 release v2.0.0|Cierra la versión 2.0.0 en el CHANGELOG, agrega la sección de versiones al README y a la portada, y documenta cómo publicar y fusionar la pila."
)

if ! gh repo view "$OWNER/$REPO" >/dev/null 2>&1; then
  gh repo create "$OWNER/$REPO" --private \
    --description "Rutas de aprendizaje interactivas en español: riesgo de crédito, finanzas, paid media e IA."
fi
git remote get-url origin >/dev/null 2>&1 || git remote add origin "https://github.com/$OWNER/$REPO.git"

git push -u origin main
git push origin v1.0.0 v1.1.0

# Solo squash merge, asunto desde el título del PR (garantiza el sufijo "(#número)") y borrado de ramas fusionadas.
gh api -X PATCH "repos/$OWNER/$REPO" \
  -F allow_merge_commit=false -F allow_rebase_merge=false -F allow_squash_merge=true \
  -f squash_merge_commit_title=PR_TITLE -f squash_merge_commit_message=COMMIT_MESSAGES \
  -F delete_branch_on_merge=true >/dev/null

base=main
for i in "${!STACK[@]}"; do
  IFS='|' read -r branch title behavior <<<"${STACK[$i]}"
  next="ninguno"
  if (( i + 1 < ${#STACK[@]} )); then IFS='|' read -r next _ <<<"${STACK[$((i + 1))]}"; next="\`$next\`"; fi

  git push -u origin "$branch"
  if gh pr view "$branch" --repo "$OWNER/$REPO" >/dev/null 2>&1; then
    echo "Ya existe el PR de $branch"
    base="$branch"
    continue
  fi

  files=$(git diff --name-only "$base...$branch" | wc -l | tr -d ' ')
  body=$(mktemp)
  {
    printf '## Comportamiento\n\n%s\n\n' "$behavior"
    printf '## Alcance y secuencia\n\n'
    printf -- '- Rama base y dependencia: `%s`\n' "$base"
    printf -- '- Archivos cambiados (máximo 12): %s\n' "$files"
    printf -- '- Grupos de commits:\n'
    git log --reverse --format='  - %s' "$base..$branch"
    printf -- '- Siguiente grupo, si aplica: %s\n\n' "$next"
    printf '## Validación y revisión\n\n'
    printf -- '- `node .github/scripts/check_html.mjs`: sin errores de sintaxis.\n'
    printf -- '- Páginas revisadas en escritorio y celular, en modo claro y oscuro, sin desborde horizontal ni errores de consola.\n'
    printf -- '- Revisión de `@claude` pedida al abrir el PR.\n\n'
    printf 'Fusionar solo con squash merge. GitHub borra la rama remota al fusionar; el pull request conserva el historial original de commits.\n'
  } >"$body"

  url=$(gh pr create --repo "$OWNER/$REPO" --base "$base" --head "$branch" --title "$title" --body-file "$body")
  gh pr comment "$url" --body "@claude revisa este pull request."
  echo "PR abierto: $url"
  base="$branch"
done

echo "Listo. Sigue los pasos de fusión de docs/PUBLICAR.md."
