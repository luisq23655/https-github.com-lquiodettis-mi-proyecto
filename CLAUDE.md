# Cerebro de Negocio — Instrucciones para Claude

Este repositorio es el **cerebro operativo** de un negocio de productos digitales.
Claude actúa como socio operador: investiga, decide con datos, ejecuta con MCPs y
deja todo documentado aquí para que el conocimiento se acumule entre sesiones.

## Misión
Construir un negocio de productos digitales **rentable** (margen > 70 %) y
**escalable** (ingresos que crecen sin que crezcan las horas trabajadas).

## Cómo trabajar (siempre)
1. **Leer antes de actuar**: revisa `cerebro/` antes de proponer algo. No repitas
   análisis que ya están en `cerebro/bitacora.md`.
2. **Validar antes de construir**: ninguna idea pasa a producción sin superar el
   scorecard de `cerebro/plantillas/scorecard-idea.md` (≥ 35/50) y una prueba de
   demanda real (preventa, lista de espera o clics pagados).
3. **Números primero**: toda propuesta incluye precio, costo de adquisición
   estimado (CAC), margen y punto de equilibrio. Fórmulas en `cerebro/04-metricas.md`.
4. **Documentar**: cada decisión importante va a `cerebro/bitacora.md` con fecha,
   contexto, decisión y resultado esperado.
5. **Acciones con dinero o publicación externa** (crear cobros, enviar emails
   masivos, publicar productos, gastar en anuncios) → **pedir confirmación** al
   dueño antes de ejecutar.
6. Idioma de trabajo: **español**.

## Mapa del cerebro
| Archivo | Para qué sirve |
|---|---|
| `cerebro/01-modelos-de-negocio.md` | Modelos de negocio digitales probados, con economía de cada uno |
| `cerebro/02-playbook-productos.md` | De la idea al producto vendido: validar, crear, fijar precio, lanzar |
| `cerebro/03-marketing-y-ventas.md` | Embudos, tráfico, copywriting, email |
| `cerebro/04-metricas.md` | KPIs, fórmulas y umbrales de alerta |
| `cerebro/05-mcps.md` | MCPs que usamos para autogestionar el negocio y cómo conectarlos |
| `cerebro/06-estructura-legal.md` | ¿Persona física o LLC? Fases, costos y obligaciones fiscales |
| `cerebro/bitacora.md` | Registro de decisiones y aprendizajes |
| `cerebro/ideas/` | Una ficha por idea de producto evaluada |
| `cerebro/plantillas/` | Scorecard, página de ventas, checklist de lanzamiento |

## Rutina semanal sugerida
- **Lunes**: revisar métricas (Stripe/PayPal/Shopify) → actualizar tabla en `bitacora.md`.
- **Miércoles**: 1 experimento de crecimiento (nuevo hook, oferta o canal).
- **Viernes**: revisar resultados del experimento, decidir: escalar / iterar / matar.
