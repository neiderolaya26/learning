# learning

Rutas de aprendizaje interactivas en español, cada una en una sola página HTML: explicación, calculadoras con datos inventados, catálogo de técnicas, quiz y plan de estudio con progreso guardado en el navegador.

**Verlas en línea:** activa GitHub Pages (Settings → Pages → Deploy from a branch → `main` / root) y abre `https://<tu-usuario>.github.io/learning/`.

| Ruta | Nivel | Qué cubre | Duración |
| --- | --- | --- | --- |
| [Riesgo de crédito](rutas/riesgo-de-credito/) | Fundamentos → experto | Pérdida esperada, scorecards (WoE/IV, PDO), validación (KS, Gini, calibración), cosechas y roll rates, punto de corte, pricing y RAROC, NIIF 9, capital IRB y Vasicek, PSI y riesgo de modelo, supervivencia, ML gobernado, causalidad | 12 semanas |
| [Paid Media](rutas/paid-media/) | Fundamentos → avanzado | Embudo y métricas (CPM, CTR, CPA, ROAS, ROI), subasta, plataformas, fase de aprendizaje, uplift, MMM, atribución, catálogo de modelos de marketing | 14 días |
| [IA y Data Science](rutas/ia-data-science/) | Repaso de máster → agentes | Repaso de máster en Data Science con quices y examen final, y la ruta por los cursos públicos del profesor Sergio A. Mora Pardo (PUJ): estocásticos, deep learning, NLP, grafos, LLMs y agentes | 8 semanas + cursos |

## Cómo usarlas

- Abre el `index.html` de cada ruta en el navegador; no necesitan instalación ni servidor.
- El progreso del quiz y del plan se guarda solo en tu navegador.
- Todos los números de los ejemplos son inventados para practicar. Las fórmulas están simplificadas con fines de aprendizaje; confirma los detalles en la norma o la documentación oficial antes de usarlas en trabajo real.
- El botón "Pregúntale a Claude" solo aparece cuando la página se abre como artefacto en claude.ai; en GitHub Pages queda oculto.

## Estructura

```
index.html                       portada con enlaces a las rutas
rutas/
  riesgo-de-credito/index.html
  paid-media/index.html
  ia-data-science/index.html
```

Para agregar una ruta nueva: crea `rutas/<nombre>/index.html`, súmala a la tabla de este README y a la portada.
