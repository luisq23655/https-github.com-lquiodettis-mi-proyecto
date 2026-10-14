# La oficina de agentes

El **Director de Operaciones** es la sesión principal de Claude: recibe los
objetivos de los dueños, reparte el trabajo entre los agentes especialistas,
revisa lo que entregan y lleva la bitácora. Los especialistas viven en
`.claude/agents/` y se activan automáticamente cuando la tarea encaja, o
pidiéndolos por nombre ("que el agente de ventas prepare…").

## Organigrama
```
                     Dueños (aprueban dinero, publicación y contratos)
                                   │
                    Director de Operaciones (sesión principal)
                                   │
 ┌──────────────┬──────────────┬───┴──────────┬──────────────┬──────────────┬──────────────┐
 Investigación  Estrategia     Marketing y    Ventas         Entrega de     Finanzas y     Soporte
 de mercado     de oferta      contenido      (SDR/closer)   servicios      métricas       al cliente
```

| Agente | Archivo | Responsabilidad | Herramientas / MCPs |
|---|---|---|---|
| Investigador de mercado | `investigador-mercado.md` | Nichos, competidores, precios, demanda | Web, Playwright |
| Estratega de oferta | `estratega-oferta.md` | Ofertas, precios, garantías, escalera de valor, scorecard | Cerebro |
| Marketing y contenido | `marketing-contenido.md` | Calendario, guiones, posts, emails, landing pages, anuncios | Canva, Drive, email |
| Ventas | `ventas.md` | Listas de prospectos, mensajes de outreach, guiones de llamada, propuestas | Gmail, HubSpot, Calendar |
| Entrega de servicios | `entrega-servicios.md` | Construir agentes/automatizaciones de clientes, SOPs, QA | Claude Code, Drive, Notion |
| Finanzas y métricas | `finanzas-metricas.md` | Facturas, gastos, MRR, reportes semanales, alertas | Zoho Books, Stripe/PayPal, Sheets |
| Soporte al cliente | `soporte-cliente.md` | Respuestas, onboarding, FAQ, detección de churn | Gmail, Notion |

## Comandos de operación (`.claude/commands/`)
| Comando | Qué hace |
|---|---|
| `/reporte-semanal` | Junta métricas, actualiza la bitácora y propone 3 acciones |
| `/evaluar-idea <idea>` | Investiga y puntúa una idea con el scorecard; crea su ficha |
| `/prospectar <nicho> <ciudad>` | Arma lista de prospectos y mensajes personalizados (borradores) |
| `/propuesta <cliente>` | Genera propuesta comercial y alcance a partir de notas de la llamada |
| `/onboarding <cliente>` | Crea el plan de implementación y la carpeta del cliente |

## Reglas de la oficina
1. Ningún agente envía, publica, cobra ni reembolsa sin aprobación de los dueños:
   preparan **borradores**.
2. Todo entregable queda en el repo (`clientes/`, `cerebro/`, `marketing/`) o en Drive.
3. Cada agente cierra su tarea con: qué hizo, dónde está, qué necesita de los dueños.
4. Lo que funciona se convierte en SOP en `cerebro/sops/` para repetirlo sin pensar.

## Automatización 24/7
Los agentes trabajan mientras hay una sesión activa. Para tareas recurrentes sin
intervención se usan **Rutinas** programadas de Claude Code (por ejemplo, el
reporte semanal los lunes) y Zapier/Make/n8n para eventos ("pago recibido →
entregar acceso").
