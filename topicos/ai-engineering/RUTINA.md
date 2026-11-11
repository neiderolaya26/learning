# Rutina semanal: informe de AI Engineering

Instrucciones que sigue la tarea programada cada semana. Si editas este archivo, la próxima ejecución usará la versión nueva.

## Pasos
1. Lee los informes anteriores en `topicos/ai-engineering/*.md`, empezando por el más reciente, y anota las piezas ya cubiertas (ID de arXiv o URL).
2. Busca publicaciones o actualizaciones sustanciales de los **últimos 7 días**:
   - Revisa los listados `https://arxiv.org/list/{cs.CL,cs.AI,cs.LG,cs.SE,cs.MA}/pastweek?show=2000` y fíltralos por agentes, evaluación y post-training.
   - Revisa blogs técnicos y reportes de laboratorios: Anthropic, OpenAI, Google DeepMind, Meta, AI2, Qwen, DeepSeek, Mistral, NVIDIA, Hugging Face, LangChain y AWS.
   - Busca en la web y consulta los repositorios oficiales.
3. Verifica la fecha de la v1 y la de la última versión con la API de arXiv (`export.arxiv.org/api/query?id_list=...`). Distingue un trabajo nuevo de una versión nueva de uno antiguo. No repitas piezas anteriores salvo que haya un cambio relevante, y en ese caso explica cuál.
4. Lee el texto completo (HTML de arXiv o PDF) de los finalistas. Comprueba que los enlaces a código, datos y checkpoints respondan. Si no puedes acceder a algo, dilo.
5. Selecciona entre 3 y 5 piezas, o menos si no hay calidad suficiente, sin rellenar. Si no hay novedades relevantes, dilo claramente.
6. Escribe `topicos/ai-engineering/AAAA-MM-DD.md` siguiendo el formato del informe del 2026-10-27, más el contexto previo y el resumen ampliado en español de cada pieza (ver sus secciones).
7. Actualiza el artefacto (ver la sección "Artefacto semanal").
8. Haz commit con un Conventional Commit (por ejemplo `docs(topicos-ai): 📝 add AAAA-MM-DD edition`) y push a la rama `topicos` del repositorio `learning`. No abras pull request.

## Contexto previo (por pieza, va primero)

Cada pieza empieza con un **contexto previo en español** de 250–450 palabras que explica el tema de fondo **antes** del paper, para que el lector no lea papers sueltos sino que entienda en qué conversación se insertan. Ejemplo: si el paper propone una nueva forma de hallar un punto de equilibrio, el contexto explica qué es un punto de equilibrio, de qué se compone, cómo se ha calculado tradicionalmente y qué problemas tiene, y solo después viene el paper. Usa siempre esta estructura:

1. **Qué es:** definición clara del concepto o problema central, en español sencillo, con el término en inglés entre paréntesis.
2. **De qué se compone:** sus elementos, variables o supuestos principales. Si ayuda, incluye una fórmula básica explicada en palabras.
3. **Cómo se ha trabajado:** los enfoques clásicos y los más usados en la práctica, con referencias canónicas (libros de texto, papers fundacionales o normas como Basilea o NIIF 9) solo si estás seguro de que existen.
4. **Dónde está la dificultad:** qué limitaciones o preguntas abiertas tienen esos enfoques. Es justo lo que el paper intenta mejorar.
5. **Ejemplo intuitivo:** un caso pequeño, con números simples marcados como ilustrativos.
6. **Cómo se conecta con el paper y con la práctica del lector**, en una o dos frases.

Reglas del contexto previo:
- Es material de base, no un resumen del paper. No adelantes resultados del paper aquí.
- No inventes referencias, autores ni cifras. Si no estás seguro de una referencia, describe el enfoque sin citarla.
- Si dos piezas de la misma edición comparten tema de fondo, escribe el contexto una vez en la primera y, en la segunda, remite a él y agrega solo lo que falte.
- En el informe `.md`, ponlo como primer bloque de cada pieza, justo después del título y los datos, con el encabezado `#### Contexto previo: <tema>`.
- En el artefacto (pestaña Informe), ponlo como el primer elemento de la tarjeta de cada pieza, antes de "Qué cambia", en un desplegable `<details><summary>Contexto previo: <tema></summary>…</details>`. Debe estar cerrado por defecto, verse distinto del resumen ampliado (por ejemplo con un borde lateral del color de acento) y ser legible en el celular y en modo oscuro. El orden dentro de la tarjeta es: contexto previo → resumen corto → resumen ampliado. Los quices pueden incluir 1–2 preguntas de conceptos basadas en el contexto previo.

## Resumen ampliado en español (por pieza)

Además del resumen corto de 120–180 palabras, cada pieza lleva un **resumen ampliado en español** de 400–700 palabras. Escríbelo a partir del texto completo, no solo del abstract, para que el lector entienda el paper sin leerlo en inglés y sin perder información importante. Usa siempre esta estructura:

1. **Problema y motivación:** qué pregunta responde el paper y por qué no estaba resuelta.
2. **Conceptos clave:** explica en español sencillo cada término técnico necesario. La primera vez, pon el término original en inglés entre paréntesis, por ejemplo "déficit esperado (*expected shortfall*, ES)".
3. **Datos:** fuentes, periodo, frecuencia, tamaño de la muestra y si son públicos.
4. **Método paso a paso:** cómo funciona y qué supuestos usa. Si ayuda, incluye la ecuación central en notación simple, explicada en palabras.
5. **Resultados:** todas las cifras principales, cada una con su contexto (contra qué baseline, en qué muestra y periodo) y marcadas [medido]. Resume en prosa o en una tabla pequeña las tablas clave del paper.
6. **Robustez y limitaciones:** las que reconocen los autores, marcadas [autores], y las que detecta el informe, marcadas [inferencia].
7. **Aporte frente a trabajos previos:** con qué literatura o métodos se compara y qué agrega.
8. **Cómo aplicarlo:** cómo se conecta con la práctica del lector descrito en el archivo de fuentes o de criterios.
9. **Glosario breve** (3–6 términos) y **una frase para recordar** la idea central.

Reglas del resumen ampliado:
- Traduce con fidelidad. No inventes cifras, supuestos ni resultados.
- Si solo pudiste leer el abstract o una parte del texto, dilo en la primera línea del resumen ampliado y no completes lo que falta con suposiciones.
- En el informe `.md`, ponlo bajo cada pieza con el encabezado `#### Resumen ampliado en español`.
- En el artefacto (pestaña Informe), ponlo dentro de la tarjeta de cada pieza como un desplegable `<details><summary>Resumen ampliado en español</summary>…</details>`. Debe estar cerrado por defecto, ser legible en el celular y en modo oscuro, y usar los colores del tema. Los quices pueden incluir preguntas basadas en el resumen ampliado.

- En el `.md` y en el HTML, nunca uses el carácter `|` dentro de una celda de tabla (por ejemplo, para valor absoluto): escribe "en valor absoluto". En el HTML, escribe las tablas directamente con `<table>`, revisa que cada fila tenga el mismo número de celdas que el encabezado y que no queden barras invertidas sueltas.

## Artefacto semanal
- **URL fija:** https://claude.ai/artifact/42pf8ADNKYSFGfXW9tFyCn. Siempre se actualiza esta misma; nunca se crea un artefacto nuevo.
- **Fuente:** `topicos/ai-engineering/artefacto/index.html`. Antes de editarla, lee el artefacto publicado con la herramienta Artifact (`action: "read"`, `url` = la de arriba). Si la versión publicada difiere del archivo del repo, parte de la publicada, porque pudo editarse desde la página.
- **Qué actualizar:** mantén el diseño, los estilos y la estructura de tres pestañas, y reemplaza el contenido por el de la edición nueva:
  - **Informe:** las piezas de la semana con los mismos campos, las prioridades, la nota "En seguimiento" y la fecha de edición en la cabecera.
  - **Quices:** entre 8 y 12 preguntas nuevas sobre las piezas de la semana más 2–3 de conceptos, cada una con su explicación. Actualiza los botones de filtro según los temas de la semana y cambia `KEY` del localStorage a `topicos-ai-quiz-AAAA-MM-DD`.
  - **Ejemplos dummy:** una simulación interactiva de juguete por pieza, con la etiqueta "DATOS INVENTADOS" y una línea final que distinga la idea del juguete de lo que realmente reporta el paper. Nunca presentes números inventados como resultados.
  - **Ediciones anteriores:** al final de la pestaña Informe, agrega o actualiza una lista con enlaces a los `.md` anteriores en GitHub (`https://github.com/neiderolaya26/learning/blob/topicos/topicos/ai-engineering/AAAA-MM-DD.md`).
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
