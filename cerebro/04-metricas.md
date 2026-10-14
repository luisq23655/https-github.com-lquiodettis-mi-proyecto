# Métricas y fórmulas

## KPIs principales
| Métrica | Fórmula | Objetivo / alerta |
|---|---|---|
| Ingresos mensuales | Σ ventas del mes | Crecer ≥ 10 % mes a mes |
| Margen bruto | (Ingresos − costos directos) / Ingresos | > 70 % |
| Conversión de página | Ventas / visitantes únicos | 1–3 % (frío), 5–15 % (lista de email) |
| Ticket medio (AOV) | Ingresos / nº pedidos | Subir con bumps y bundles |
| CAC | Gasto en adquisición / nuevos clientes | < AOV del primer pedido (ideal) |
| LTV | AOV × compras por cliente (o ARPU / churn en recurrente) | LTV ≥ 3 × CAC |
| Churn mensual (recurrente) | Bajas del mes / activos al inicio | < 8 % |
| MRR | Σ suscripciones activas mensualizadas | — |
| Tasa de reembolso | Reembolsos / ventas | < 5 % (si > 10 %: problema de producto o promesa) |
| Valor por suscriptor | Ingresos del mes / tamaño de lista | Referencia: 1–3 USD/suscriptor/mes |

## Punto de equilibrio
```
Ventas necesarias = Costos fijos mensuales / (Precio − Costo variable por venta)
```
Costo variable típico: comisión de pasarela (≈ 3–5 %) + comisión de plataforma + IVA si aplica.

## Reglas de decisión
- **Escalar** si LTV/CAC ≥ 3 y conversión estable 2 semanas.
- **Iterar** si conversión 0,5–1 %: cambiar oferta/titular.
- **Matar** si < 0,5 % tras 1 000 visitas cualificadas y 2 iteraciones.
