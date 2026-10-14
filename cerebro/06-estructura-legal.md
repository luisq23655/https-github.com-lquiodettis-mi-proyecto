# Estructura legal y fiscal

> Orientación general, no asesoría legal. Validar con un contador del país de
> residencia antes de constituir nada.

## ¿Hace falta una empresa para empezar? No.
Gumroad, Lemon Squeezy, Hotmart, Etsy y PayPal aceptan **personas físicas**.
Gumroad y Lemon Squeezy son *Merchant of Record*: cobran y pagan el IVA/sales
tax de cada país del comprador. Lo que sí hay que hacer es **declarar los
ingresos en el país donde vives**.

## Fases recomendadas
| Fase | Cuándo | Estructura |
|---|---|---|
| 1. Validar | 0 a ~1 000 USD/mes | Persona física + registro simple local (ver tabla de países) + plataformas MoR |
| 2. Formalizar | Ventas constantes > 1 000–2 000 USD/mes, o necesitas Stripe directo | LLC en EE. UU. **o** empresa local, según lo que diga tu contador |
| 3. Optimizar | > 5 000 USD/mes | Revisar estructura con contador internacional |

## Registro simple por país (persona física)
| País | Figura habitual |
|---|---|
| México | Persona física con actividad empresarial / RESICO (SAT) |
| Colombia | Persona natural con RUT; evaluar Régimen Simple (DIAN) |
| Argentina | Monotributo (ARCA, ex AFIP) |
| Chile | Inicio de actividades en el SII (boletas de honorarios o empresa individual) |
| Perú | RUC; RUS o RER según ingresos (SUNAT) |
| Ecuador | RUC; RIMPE emprendedor (SRI) |
| Venezuela | RIF personal (SENIAT) |
| España | Alta de autónomo (RETA) + Hacienda (modelo 036/037) |

## LLC en EE. UU. (para no residentes)
**Ventajas**: acceso a Stripe directo, cuenta bancaria en USD (Mercury, Relay,
Wise), más credibilidad, contratos en inglés.

**Costos aproximados**
- Constitución: 50–300 USD de tasa estatal + 0–500 USD si usas un servicio
  (Stripe Atlas, doola, Firstbase).
- Mantenimiento anual: agente registrado (~50–150 USD), reporte o impuesto
  estatal (Wyoming ~60 USD; Delaware 300 USD; Nuevo México 0 USD).
- Contador para formularios federales: ~300–800 USD/año.

**Obligaciones que no se pueden olvidar**
- **Formulario 5472 + 1120 pro forma** cada año (multa de **25 000 USD** si no se
  presenta), aunque la LLC no deba impuestos.
- EIN (número fiscal) para abrir el banco.
- BOI (FinCEN): desde marzo de 2025 las LLC constituidas en EE. UU. quedaron
  exentas; **verificar la regla vigente** antes de constituir.

**Ojo fiscal**: una LLC de un solo socio extranjero normalmente no paga impuesto
federal en EE. UU. si no tiene actividad allí, pero **tu país de residencia
puede gravar esas ganancias** (reglas de transparencia fiscal/CFC). La LLC no
elimina impuestos; ordena la operación.

## Decisión por defecto del cerebro
Empezar como **persona física + Gumroad/Lemon Squeezy (global) + Hotmart (LatAm)**.
Revisar la LLC cuando se cumplan los criterios de la fase 2.

## Cómo llega el dinero (fase 1)
```
Comprador paga con tarjeta/PayPal/método local
   → Plataforma (Gumroad / Lemon Squeezy / Hotmart) cobra y retiene impuestos
   → Pago periódico (payout) → PayPal o cuenta bancaria propia
```
- No hace falta tener pasarela propia: la plataforma procesa el pago.
- **Gumroad**: payouts semanales a banco (países soportados) o PayPal.
- **Lemon Squeezy**: payouts a banco o PayPal.
- **Hotmart**: retiro a cuenta bancaria local en LatAm (comisión de retiro aprox. 1 USD).
- **PayPal** sirve como destino universal, pero convertir y retirar a banco local
  suele costar 3–5 % en tipo de cambio. Alternativas para recibir USD con menos
  pérdida: Wise o Payoneer (verificar qué plataformas pagan a cada una).
- Verificar en cada plataforma qué métodos de payout existen para el país de residencia.
