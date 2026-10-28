# learning

Rutas de aprendizaje interactivas en español, cada una en una sola página HTML: explicación, calculadoras con datos inventados, catálogo de técnicas, quiz y plan de estudio con progreso guardado en el navegador.

**Verlas en línea:** activa GitHub Pages (Settings → Pages → Deploy from a branch → `main` / root) y abre `https://<tu-usuario>.github.io/learning/`.

| Ruta | Nivel | Qué cubre | Duración |
| --- | --- | --- | --- |
| [Riesgo de crédito](rutas/riesgo-de-credito/) | Fundamentos → experto | Pérdida esperada, scorecards (WoE/IV, PDO), validación (KS, Gini, calibración), cosechas y roll rates, punto de corte, pricing y RAROC, NIIF 9, capital IRB y Vasicek, PSI y riesgo de modelo, supervivencia, ML gobernado, causalidad | 12 semanas |
| [Finanzas](rutas/finanzas/) | Fundamentos → experto | Núcleo de MIT, Princeton, Oxford y LSE: valor del dinero, estados financieros, DCF, WACC, portafolio y factores, renta fija, derivados y Black-Scholes, VaR y ES, modelo de Merton, econometría financiera, ML en finanzas | 16 semanas |
| [Paid Media](rutas/paid-media/) | Fundamentos → avanzado | Embudo y métricas (CPM, CTR, CPA, ROAS, ROI), subasta, plataformas, fase de aprendizaje, uplift, MMM, atribución, catálogo de modelos de marketing | 14 días |
| [IA y Data Science](rutas/ia-data-science/) | Repaso de máster → agentes | Repaso de máster en Data Science con quices y examen final, y la ruta por los cursos públicos del profesor Sergio A. Mora Pardo (PUJ): estocásticos, deep learning, NLP, grafos, LLMs y agentes | 8 semanas + cursos |

## Versiones

| Versión | Fecha | Qué cambió |
| --- | --- | --- |
| 2.1.0 | 2026-10-28 | Bibliografía en formato APA en las cuatro rutas y fuentes numeradas al pie de cada módulo |
| 2.0.0 | 2026-10-28 | Glosario emergente en las cuatro rutas y rutas alineadas con programas de referencia: GARP FRM, Imperial, Stanford y Edimburgo (riesgo); Columbia, Wharton y Harvard (paid media); Harvard y Stanford (IA); MIT, Princeton, Oxford, LSE, Imperial y Harvard (finanzas) |
| 1.1.0 | 2026-10-28 | Ruta de Finanzas y gobernanza del repositorio |
| 1.0.0 | 2026-10-28 | Rutas de Riesgo de crédito, Paid Media e IA |

El detalle está en [CHANGELOG.md](CHANGELOG.md). Cada cambio entra por un pull request con revisión y squash merge, así que cada commit de `main` lleva al PR que lo produjo.

## Cómo usarlas

- Abre el `index.html` de cada ruta en el navegador; no necesitan instalación ni servidor.
- El progreso del quiz y del plan se guarda solo en tu navegador.
- Las siglas y los términos técnicos están subrayados: pasa el cursor o tócalos para ver su definición en palabras sencillas.
- Todos los números de los ejemplos son inventados para practicar. Las fórmulas están simplificadas con fines de aprendizaje; confirma los detalles en la norma o la documentación oficial antes de usarlas en trabajo real.
- El botón "Pregúntale a Claude" solo aparece cuando la página se abre como artefacto en claude.ai; en GitHub Pages queda oculto.

## Estructura

```
index.html                       portada con enlaces a las rutas
rutas/
  riesgo-de-credito/index.html
  finanzas/index.html
  paid-media/index.html
  ia-data-science/index.html
```

Las reglas de contribución están en [AGENTS.md](AGENTS.md) y la configuración del repo en [docs/GOBERNANZA.md](docs/GOBERNANZA.md).

Para agregar una ruta nueva: crea `rutas/<nombre>/index.html`, súmala a la tabla de este README y a la portada.
