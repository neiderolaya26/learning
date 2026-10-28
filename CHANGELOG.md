# Historial de versiones

Cada versión resume qué cambió en las rutas de aprendizaje. El formato sigue [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/) y la numeración [SemVer](https://semver.org/lang/es/): la versión mayor cambia cuando se reestructura una ruta, la menor cuando se agrega contenido y la de parche cuando se corrige.

## [Sin publicar]

## [3.2.0] - 2026-10-28

Las rutas se pueden recorrer por palabra clave: basta escribir un término para encontrar cada lugar donde aparece.

### Agregado
- Botón flotante "Buscar" en las cuatro rutas, junto a "Índice" y "Siguiente". Abre una barra arriba de la página donde se escribe una palabra o frase.
- Todas las coincidencias quedan resaltadas y la actual en otro color; el contador indica "3 de 12" y las flechas, Enter y Mayús+Enter pasan a la siguiente o a la anterior.
- La búsqueda no distingue tildes ni mayúsculas ("perdida" encuentra "Pérdida") y abre las secciones plegadas donde haya una coincidencia.
- Solo rastrea palabras: no oculta ni filtra contenido. Los saltos de la búsqueda no marcan módulos como leídos.
- Atajo de teclado en computador: / abre el buscador y Esc lo cierra.

### Corregido
- Paid Media, Finanzas y Riesgo de crédito: en los bloques "Cómo se modela esto" y "Técnicas del catálogo", tocar una técnica ya no salta al catálogo al final de la página; la ficha se despliega en el mismo lugar y se cierra con otro toque. Incluye un enlace "Ver en el catálogo" para quien sí quiera ir.

## [3.1.0] - 2026-10-28

Las rutas recuerdan dónde quedó la lectura, así que ya no hay que desplazarse desde el principio cada vez.

### Agregado
- Tarjeta "Seguir donde quedaste" al abrir una ruta: muestra el módulo y hace cuánto se leyó, y con "Continuar" vuelve al punto exacto. No salta sola, para no desorientar.
- Botones flotantes "Índice" y "Siguiente": el índice lista los módulos con una casilla para marcar o desmarcar cada uno e indica dónde estás; "Siguiente" baja al próximo módulo.
- Un módulo se marca solo cuando su final pasa por la pantalla mientras la persona se desplaza. Los saltos con Siguiente, el índice, J, K o Continuar no marcan nada, y lo que se marque o desmarque a mano se respeta.
- Barra de progreso de lectura y ✓ en el menú superior para los módulos leídos.
- Atajos de teclado en computador: J siguiente módulo, K anterior, I índice, Esc cierra.
- IA y Data Science: reabre la última lección del módulo 0 que estabas leyendo.
- El punto de lectura se guarda solo en el navegador y solo cuando hay desplazamiento, así que abrir y cerrar la página no lo borra.

## [3.0.0] - 2026-10-28

La ruta de Paid Media deja de ser una preparación para una entrevista concreta y pasa a ser una ruta profesional, organizada con los programas de Columbia, Wharton y Harvard.

### Cambiado
- Paid Media: portada, módulo "El campo" y fase de aprendizaje reescritos sin el contexto de la entrevista (se quitan la "regla del líder" y la sigla CPB).
- Paid Media: el módulo "Tu ventaja" pasa a ser "Valor del cliente: adquisición ajustada por calidad del cliente", sin datos personales ni empleadores, y se ubica después de experimentos.
- Paid Media: el plan principal es el de 10 semanas alineado con Columbia y Wharton, con casillas de progreso; el plan de 14 días queda como arranque opcional y termina en una presentación en vez de una entrevista.
- Paid Media: catálogo, quiz y chat sin referencias personales; la etiqueta "Tu ventaja" pasa a ser "Puente con riesgo".

## [2.1.0] - 2026-10-28

Las rutas citan sus fuentes: cada afirmación se puede rastrear hasta una norma, un libro, un artículo o un programa oficial.

### Agregado
- Bibliografía en formato APA 7 al final de las cuatro rutas, agrupada en normas y reguladores, libros, artículos, programas académicos y documentación técnica, con DOI o enlace oficial cuando existe: 31 referencias en Riesgo de crédito, 41 en Finanzas, 28 en Paid Media y 25 en IA y Data Science.
- "Fuentes de este módulo" al pie de cada módulo, con citas numeradas que llevan a la referencia. En la ruta de IA, las fuentes se agrupan por tema del módulo 0.
- Nota sobre qué cifras son convenciones de la industria y no normas.

## [2.0.0] - 2026-10-28

Las cuatro rutas se reestructuran con los planes de estudio de programas de referencia y suman un glosario emergente.

### Agregado
- Glosario emergente en las cuatro rutas: cada sigla o término técnico (EA, PD, ROAS, WACC, PSI…) queda subrayado y muestra su definición en palabras sencillas al pasar el cursor, tocarlo o enfocarlo con el teclado. 294 definiciones en total.
- Riesgo de crédito: sección de programas de referencia (GARP FRM, Imperial College, Stanford MS&E 246 y Universidad de Edimburgo) y módulo nuevo de mercados de crédito con triángulo de crédito (CDS a PD), titularización por tramos y riesgo de contraparte.
- Paid Media: sección de programas de referencia (Columbia MS in Marketing Science, Wharton, Harvard Business School, Google y Meta), niveles por módulo, módulo de experimentos con calculadora de tamaño de muestra y plan de profundización de 10 semanas.
- IA y Data Science: sección de programas de referencia (Harvard SM in Data Science, Harvard Extension, Stanford CS229, CS224N y CS231N, y PUJ) y equivalente académico por semana del plan del módulo 0.
- Finanzas: Imperial College y el MBA de Harvard como programas de referencia.
- Las cuatro rutas muestran su historial de versiones al pie de la página.

### Cambiado
- Riesgo de crédito: módulos renumerados según el temario; cada semana del plan indica su referencia académica; quiz de 22 preguntas y catálogo de 41 técnicas.
- Paid Media: módulos renumerados con fichas de nivel; quiz de 17 preguntas.
- Finanzas: cada semana del plan indica su referencia académica.

## [1.1.0] - 2026-10-28

### Agregado
- Ruta de **Finanzas** con el núcleo de MIT, Princeton, Oxford y LSE: 10 calculadoras, catálogo de 37 técnicas, quiz de 20 preguntas y plan de 16 semanas.
- Gobernanza del repositorio: `AGENTS.md`, plantilla de pull request, CI, límite de 12 archivos por PR, títulos convencionales y revisión con `@claude`.

## [1.0.0] - 2026-10-28

### Agregado
- Ruta de **Riesgo de crédito**, de fundamentos a experto: 11 módulos con calculadoras, catálogo de 38 técnicas, quiz de 20 preguntas y plan de 12 semanas.
- Ruta de **Paid Media** para pasar de riesgo a analítica de marketing, con plan de 14 días.
- Ruta de **IA y Data Science**: repaso de máster con quices y examen final, y la ruta por los cursos públicos del profesor Sergio A. Mora Pardo.
- Portada con enlaces a las rutas.

[Sin publicar]: https://github.com/neiderolaya26/learning/compare/v3.1.0...HEAD
[3.1.0]: https://github.com/neiderolaya26/learning/compare/v3.0.0...v3.1.0
[3.0.0]: https://github.com/neiderolaya26/learning/compare/v2.1.0...v3.0.0
[2.1.0]: https://github.com/neiderolaya26/learning/compare/v2.0.0...v2.1.0
[2.0.0]: https://github.com/neiderolaya26/learning/compare/v1.1.0...v2.0.0
[1.1.0]: https://github.com/neiderolaya26/learning/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/neiderolaya26/learning/releases/tag/v1.0.0
