# Rutina semanal: informe de AI Engineering

Instrucciones que sigue la tarea programada cada semana. Si editas este archivo, la próxima ejecución usará la versión nueva.

## Pasos
1. Lee los informes anteriores en `radares/ai-engineering/*.md`, empezando por el más reciente, y anota las piezas ya cubiertas (ID de arXiv o URL).
2. Busca publicaciones o actualizaciones sustanciales de los **últimos 7 días**:
   - Revisa los listados `https://arxiv.org/list/{cs.CL,cs.AI,cs.LG,cs.SE,cs.MA}/pastweek?show=2000` y fíltralos por agentes, evaluación y post-training.
   - Revisa blogs técnicos y reportes de laboratorios: Anthropic, OpenAI, Google DeepMind, Meta, AI2, Qwen, DeepSeek, Mistral, NVIDIA, Hugging Face, LangChain y AWS.
   - Busca en la web y consulta los repositorios oficiales.
3. Verifica la fecha de la v1 y la de la última versión con la API de arXiv (`export.arxiv.org/api/query?id_list=...`). Distingue un trabajo nuevo de una versión nueva de uno antiguo. No repitas piezas anteriores salvo que haya un cambio relevante, y en ese caso explica cuál.
4. Lee el texto completo (HTML de arXiv o PDF) de los finalistas. Comprueba que los enlaces a código, datos y checkpoints respondan. Si no puedes acceder a algo, dilo.
5. Selecciona entre 3 y 5 piezas, o menos si no hay calidad suficiente, sin rellenar. Si no hay novedades relevantes, dilo claramente.
6. Escribe `radares/ai-engineering/AAAA-MM-DD.md` siguiendo el formato del informe del 2026-10-27.
7. Actualiza el artefacto (ver la sección "Artefacto semanal").
8. Haz commit con un Conventional Commit (por ejemplo `docs(radar-ai): 📝 add AAAA-MM-DD edition`) y push a la rama `radares` del repositorio `learning`. No abras pull request.

## Artefacto semanal
- **URL fija:** https://claude.ai/artifact/42pf8ADNKYSFGfXW9tFyCn. Siempre se actualiza esta misma; nunca se crea un artefacto nuevo.
- **Fuente:** `radares/ai-engineering/artefacto/index.html`. Antes de editarla, lee el artefacto publicado con la herramienta Artifact (`action: "read"`, `url` = la de arriba). Si la versión publicada difiere del archivo del repo, parte de la publicada, porque pudo editarse desde la página.
- **Qué actualizar:** mantén el diseño, los estilos y la estructura de tres pestañas, y reemplaza el contenido por el de la edición nueva:
  - **Informe:** las piezas de la semana con los mismos campos, las prioridades, la nota "En el radar" y la fecha de edición en la cabecera.
  - **Quices:** entre 8 y 12 preguntas nuevas sobre las piezas de la semana más 2–3 de conceptos, cada una con su explicación. Actualiza los botones de filtro según los temas de la semana y cambia `KEY` del localStorage a `radar-quiz-AAAA-MM-DD`.
  - **Ejemplos dummy:** una simulación interactiva de juguete por pieza, con la etiqueta "DATOS INVENTADOS" y una línea final que distinga la idea del juguete de lo que realmente reporta el paper. Nunca presentes números inventados como resultados.
  - **Ediciones anteriores:** al final de la pestaña Informe, agrega o actualiza una lista con enlaces a los `.md` anteriores en GitHub (`https://github.com/neiderolaya26/learning/blob/radares/radares/ai-engineering/AAAA-MM-DD.md`).
- **Semana sin novedades de calidad:** publica la edición igual, diciéndolo claramente en el Informe. Deja los quices y ejemplos de la semana anterior y aclara de qué fecha son.
- **Publicación:** guarda el HTML en el repo, publica con la herramienta Artifact (`file_path` = ese archivo, `url` = la de arriba, sin `icon`) y comprueba que la publicación responda OK.
- **Si la herramienta Artifact no está disponible o la publicación falla:** deja el HTML actualizado en el repo y explica el fallo en el resumen final, para que se publique a mano.

## Criterios
- Temas prioritarios: workflows agénticos, evaluación de agentes y fine-tuning/post-training de modelos open-weight. Cúbrelos cuando haya novedades que lo justifiquen, sin cuotas.
- Ordena por utilidad práctica y solidez de la evidencia. Prefiere fuentes primarias con evidencia reproducible. Evita anuncios sin sustancia y resúmenes de terceros como evidencia principal.
- Lector: Sergio Mora, científico de datos y ex Technical Leader de Data Science que está reforzando AI Engineering, AWS/Bedrock y LangChain/LangGraph. No asumas experiencia, infraestructura ni compatibilidades que no estén confirmadas.
- Recursos confirmados: una laptop sin GPU y una GPU propia local (modelo y VRAM sin confirmar). Propón cada experimento primero en una versión que corra en la laptop. Cuando el experimento lo justifique, añade una variante para la GPU local, indicando la VRAM aproximada que requiere. La GPU se usa solo para procesar, no para almacenar. En cada variante con GPU:
  - Indica de dónde se leen los datos y modelos, y a dónde se envían los resultados: métricas, logs, reportes y, si se justifica, adaptadores LoRA pequeños. El destino es la laptop o el repo, nunca la máquina de la GPU.
  - Incluye un paso final de limpieza que borre de esa máquina los checkpoints, caches de modelos y datasets intermedios.
  - Si un checkpoint grande debe conservarse, indícalo y propón dónde guardarlo fuera de la máquina de la GPU.
- No supongas que hay cuenta de AWS/Bedrock ni créditos de APIs.
- Selección por calidad, sin cuotas por tema.

## Formato por pieza (120–180 palabras)
- Título, autores u organización, fecha (v1 o versión nueva) y enlace directo.
- Qué cambia respecto a enfoques previos y cuál es el aporte concreto.
- Por qué importa: calidad, fiabilidad, costo o latencia.
- Evidencia y limitaciones, separando [medido], [autores] e [inferencia].
- Experimento pequeño: comparación o baseline más una métrica de éxito. Indica si requiere cómputo especializado y propone una alternativa reducida.
- Código, datos o checkpoints oficiales, si existen.

Cierra con **una** prioridad de lectura y **una** de experimentación, explicando por qué.
No ejecutes entrenamientos ni despliegues: solo sugiere experimentos. No inventes resultados, enlaces ni recursos.
