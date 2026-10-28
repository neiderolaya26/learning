# Instrucciones del repositorio

Reglas para cualquier persona o agente (Claude Code, Copilot, Codex) que modifique este repositorio. El objetivo es que cada cambio quede rastreable desde `git log` hasta su pull request.

## Flujo de Git

- Trabaja cada tarea que modifique archivos versionados en un worktree o rama aislada; nunca edites la copia principal en `main`.
- Crea cada rama como `feature/<nombre>`, con `<nombre>` corto, descriptivo y en kebab-case en minúsculas (por ejemplo `feature/radar-riesgo`).
- Para un cambio independiente, parte de la rama por defecto actualizada: `git pull --ff-only origin main`. Si no puede avanzar en fast-forward, revisa la divergencia y conserva el trabajo local; nunca hagas reset ni fuerces.
- Nunca hagas commit directo a `main` ni a otra rama protegida.
- Conserva los cambios ajenos a la tarea. No reescribas historia remota ni hagas force-push sin autorización explícita.

## Commits

- Usa Conventional Commits con un Gitmoji del [catálogo oficial](https://gitmoji.dev/) después del prefijo: `<tipo>(<alcance opcional>): <gitmoji> <descripción>`. Ejemplo: `feat(rutas): ✨ add finance learning path`.
- Tipos preferidos: `feat`, `fix`, `refactor`, `perf`, `docs`, `test`, `build`, `ci`, `chore` y `revert`.
- Asunto corto, en imperativo y en inglés. Marca los cambios incompatibles con `!` y un pie `BREAKING CHANGE:`.
- Agrupa los commits por responsabilidad: implementación, configuración o CI, pruebas y documentación van en commits separados cuando se pueden revisar por separado. Agrega rutas explícitas (`git add <ruta>`), no todo lo pendiente a la vez.

## Pull requests

- Cada pull request cambia como máximo 12 archivos contra su rama base, contando configuración, pruebas, documentación y lockfiles. El workflow `Review size` lo verifica.
- El título del pull request es un Conventional Commit con Gitmoji, porque se convierte en el commit final en `main`. El workflow `PR title` lo verifica.
- Lee y completa `.github/PULL_REQUEST_TEMPLATE.md` sin cambiar su estructura. Con GitHub CLI, escribe la descripción en un archivo y pásala con `--body-file`.
- Justo después de abrir el pull request, comenta mencionando `@claude` y pide una revisión. Lee todo el feedback, implementa lo que sea válido y esté en alcance, y explica en el pull request por qué no aplicas lo demás. Pide otra revisión tras cambios sustanciales.
- Integra solo con squash merge. Nunca uses merge commit ni rebase merge.
- Cada commit squash en `main` debe terminar con ` (#<número>)` para enlazarlo con su pull request. No pases `--subject` ni `--body` a `gh pr merge --squash`: GitHub solo agrega el sufijo cuando arma el asunto desde el título del pull request. Si el título no es el mensaje que quieres, corrígelo con `gh pr edit --title` antes de fusionar.
- Fusiona solo cuando pasen los checks requeridos y estén resueltos los conflictos y los comentarios accionables. Después, verifica que el commit nuevo en `main` tenga su sufijo ` (#<número>)`.

## Pull requests apilados

- Apila pull requests solo cuando un cambio depende de otro que aún no se fusiona. Los cambios independientes salen de `main`.
- Cada capa tiene su propia rama `feature/<nombre>` y su pull request; la de abajo apunta a `main` y cada una de arriba a la inmediatamente inferior.
- Corrige en la capa más baja dueña del cambio y propaga hacia arriba en orden. Fusiona de abajo hacia arriba con squash.

## Documentación

- READMEs, guías y comentarios en español. Nombres de archivos, identificadores, commits y títulos de pull request en inglés.
- Prefiere diagramas Mermaid cortos y tablas frente a prosa larga.

## Validación

- Antes de hacer commit, corre los mismos checks que CI: `python3 -m json.tool` sobre los JSON y `node .github/scripts/check_html.mjs` sobre las páginas HTML.
- Nunca subas datos personales, credenciales ni archivos `.env`.
