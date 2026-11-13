# Perfil de conocimiento del lector

Este archivo lo usan las rutinas de tópicos para escribir la sección **«Cómo lo aplicas tú»** de cada pieza: evaluar el paper a partir de lo que el lector ya sabe y ya construyó, no en abstracto. Solo contiene el perfil profesional, sin datos personales ni de empleadores. Se actualiza a mano cuando cambia algo; las rutinas solo lo leen.

## Quién es

Economista que trabaja como data scientist de riesgo de crédito en una fintech de consumo en Latinoamérica. Antes trabajó en banca en pricing y planeación financiera (FP&A) y en analítica en una empresa de comercio. Ahora está ampliando su perfil hacia analítica de marketing y growth, finanzas cuantitativas e ingeniería de sistemas con LLMs y agentes.

## Lo que ya domina (úsalo como punto de partida, no lo expliques desde cero)

- **Riesgo de crédito en producción:** scorecards y modelos de originación y renovación, definición de la variable de default, ventanas de desempeño, cortes de aprobación, monitoreo con PSI, cosechas y forecasting de cartera, fraude de originación. Gestiona una cartera de consumo en operación.
- **Modelado:** regresión logística, XGBoost y LightGBM, calibración, AUC, KS y Gini, validación out-of-time, explicabilidad con SHAP.
- **Herramientas:** Python (pandas, scikit-learn), SQL, Power BI y Excel.
- **Finanzas y negocio:** pricing de crédito, rentabilidad por cliente, P&L de cartera, presupuesto y FP&A; formación de economista (econometría, series de tiempo, microeconomía).

## Lo que ya construyó (repos públicos para conectar cada paper)

- **credit-risk-agent-lab** (`neiderolaya26/credit-risk-agent-lab`), con datos de Lending Club:
  - Comparó 6 modelos. El campeón es un LightGBM recalibrado, y la aprobación se decide por utilidad esperada.
  - Incluye prepago, LGD, monto óptimo, pricing y un análisis causal.
  - Tiene un agente en LangGraph con especialistas en paralelo, un comité, reglas duras, un auditor y firma humana.
  - Expone las herramientas por un servidor MCP, registra costos por solicitud y tiene evals con un juez LLM, backtest, CI y una demo en Hugging Face.
  - Pendientes abiertos: sesgo de selección e inferencia de rechazados (solo hay aprobados), equidad por región o vivienda, y una política que no supera un corte simple por subgrado.
- **growth-marketing-agent** (en curso, sesiones 1–2), con datos de Olist, The Complete Journey, Hillstrom y Lenta (uplift) y un benchmark de atribución:
  - Embudo y cohortes, y valor por lead según el canal.
  - Todos los datos van en Parquet con DuckDB.
  - Todavía faltan uplift, atribución, MMM, LTV y el agente.
- **Rutas de aprendizaje** en este repositorio: Riesgo de Crédito, Paid Media, Finanzas e IA y Data Science.

## Lo que está aprendiendo (aquí un paper vale más)

- Inferencia causal aplicada: uplift, diferencias en diferencias, control sintético y experimentos A/B.
- Marketing mix modeling (MMM), atribución, incrementalidad y LTV.
- Agentes con LangGraph, MCP, evals de agentes y LLM como juez, y despliegue en Hugging Face.
- Modelos de supervivencia y PD de vida completa (NIIF 9), y riesgo de modelo y validación.

## Lo que todavía no ha trabajado (explícalo con más cuidado)

- Deep learning aplicado a gran escala y fine-tuning o post-training de modelos.
- Renta fija avanzada, derivados y microestructura de mercado.
- Aprendizaje por refuerzo y diseño de subastas.

## Recursos disponibles

Laptop con 16 GB de RAM y una GPU RTX de 8 GB, usada solo para procesar. Presupuesto de API pequeño, así que prefiere experimentos que no dependan de llamadas pagadas.
