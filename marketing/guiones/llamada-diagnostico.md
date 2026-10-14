# Guion — Llamada de diagnóstico (20 minutos)

> Objetivo de la llamada: **cuantificar en dinero lo que el prospecto pierde hoy** y salir con un siguiente paso concreto (anticipo, piloto pagado o segunda llamada con fecha). No es una presentación: el prospecto habla el 70 % del tiempo.
> Estructura: situación → dolor → impacto en dinero → solución → oferta → cierre.

## Antes de la llamada (10 min de preparación)
- [ ] Revisar web, Google Maps (reseñas), Instagram, anuncios activos (Biblioteca de anuncios de Meta).
- [ ] Mandar un WhatsApp de prueba al negocio y anotar cuánto tardaron en responder.
- [ ] Construir la demo con su información pública (`marketing/demo/guion-demo.md`, < 30 min).
- [ ] Tener abierta la calculadora de ROI (sección 4) y la hoja de notas.
- [ ] Confirmar la cita por WhatsApp 2 horas antes: "Hola [NOMBRE], te confirmo nuestra llamada de hoy a las [HORA]. Te preparé un ejemplo con la información de [NEGOCIO] 🙂"

## Mapa de tiempos
| Min | Bloque | Meta |
|---|---|---|
| 0–2 | Apertura | Agenda acordada, permiso para preguntar |
| 2–9 | Situación y dolor | Números de volumen, respuesta y conversión |
| 9–12 | Impacto en dinero | Que **el prospecto** diga cuánto pierde |
| 12–16 | Demo + solución | Ver su negocio funcionando |
| 16–18 | Oferta | Un paquete recomendado, no tres |
| 18–20 | Cierre | Decisión o siguiente paso con fecha |

---

## 1. Apertura (0–2 min)
> "Gracias por el tiempo, [NOMBRE]. Te propongo esto para los 20 minutos: primero te hago unas preguntas para entender cómo llegan y se atienden tus clientes hoy; después te muestro un ejemplo que armé con la información de [NEGOCIO]; y al final te digo con honestidad si creo que esto te conviene o no. Si no tiene sentido, te lo digo. ¿Te parece?"

## 2. Situación y dolor (2–9 min)
Anota cada número. Si no lo sabe, pide un estimado ("¿más cerca de 10 o de 100?").

**Volumen**
1. "¿Por dónde te llegan los clientes nuevos hoy? ¿WhatsApp, Instagram, web, llamadas, portales?"
2. "Más o menos, ¿cuántas consultas nuevas reciben a la semana?" → **C** (consultas/semana)
3. "¿Qué porcentaje llega fuera de horario: noches, fines de semana, feriados?"

**Respuesta**
4. "¿Quién responde hoy esos mensajes? ¿Cuántas horas al día le dedica?" → **H** (horas/semana) y **S** (costo por hora de esa persona)
5. "Cuando alguien escribe un sábado a las 9 p. m., ¿qué pasa con ese mensaje?"
6. "¿Cuánto tardan en promedio en contestar? ¿Hay mensajes que se quedan sin responder?" → **P** (% que se atiende tarde o nunca)
7. *(Si aplica)* "Te escribí el [DÍA] para probar y la respuesta llegó [TIEMPO]. ¿Es lo normal?"

**Conversión y valor**
8. "De cada 10 personas que preguntan, ¿cuántas terminan comprando o agendando?" → **T** (tasa de conversión)
9. "¿Cuánto vale en promedio un cliente nuevo? ¿Y en el año, si vuelve?" → **V** (valor por cliente)
10. "¿Hacen seguimiento a quien preguntó y no compró? ¿Quién lo hace?"
11. "¿Están invirtiendo en anuncios? ¿Cuánto al mes?" → **A**

**Dolor y prioridad**
12. "¿Qué es lo que más te frustra de cómo se atiende hoy?"
13. "Si esto siguiera igual seis meses más, ¿qué pasaría?"
14. "¿Has intentado resolverlo antes? ¿Qué pasó?" (chatbot de menús, contratar a alguien, etc.)
15. "Además de ti, ¿quién más participa en una decisión así?"

## 3. Impacto en dinero (9–12 min)
Resume con sus números y **deja que él/ella confirme la cifra**:
> "Déjame ver si entendí: reciben unas **[C]** consultas por semana, más o menos el **[P] %** se atiende tarde o no se atiende, de cada 10 compran **[T × 10]** y cada cliente vale unos **USD [V]**. ¿Es correcto?"
>
> "Con esos números, si el agente solo recuperara la mitad de las que hoy se enfrían, serían unos **USD [INGRESO RECUPERADO]** al mes. ¿Te parece razonable o me estoy pasando?"

Si el prospecto corrige a la baja, **usa su número**. La credibilidad vale más que una cifra grande.

## 4. Lógica de la calculadora de ROI
Usar siempre supuestos conservadores. **No prometer resultados**: es una estimación con sus propios números.

```
Entradas (del prospecto):
  C = consultas nuevas por semana
  P = % de consultas que se atienden tarde (> 1 h) o nunca
  T = tasa de conversión actual (ej. 0.20)
  V = valor promedio de un cliente nuevo (USD; usar primera compra, no valor de vida)
  H = horas/semana del equipo respondiendo mensajes repetitivos
  S = costo por hora de esa persona (USD)

Supuestos (conservadores, ajustables):
  R = fracción de consultas "perdidas" que el agente recupera = 0.5
  F = factor de conversión de esas consultas recuperadas vs. normales = 0.5
  Q = fracción de horas que el agente libera = 0.5
  4.3 semanas por mes

Cálculo mensual:
  Consultas perdidas/mes      = C × P × 4.3
  Clientes recuperados/mes    = Consultas perdidas × R × T × F
  Ingreso recuperado/mes      = Clientes recuperados × V
  Ahorro de tiempo/mes        = H × Q × S × 4.3
  Beneficio mensual           = Ingreso recuperado + Ahorro de tiempo

Comparación con el paquete:
  Ganancia neta mensual       = Beneficio mensual − Mensualidad
  Meses para recuperar setup  = Implementación ÷ Ganancia neta mensual
  ROI año 1                   = (Beneficio mensual × 12 − (Implementación + Mensualidad × 12))
                                ÷ (Implementación + Mensualidad × 12)
```

**Ejemplo hipotético (no es un cliente real)** — clínica dental:
C = 60, P = 0.40, T = 0.30, V = 180, H = 15, S = 6.
- Consultas perdidas/mes = 60 × 0.40 × 4.3 = **103**
- Clientes recuperados = 103 × 0.5 × 0.30 × 0.5 = **7.7**
- Ingreso recuperado = 7.7 × 180 = **USD 1,393/mes**
- Ahorro de tiempo = 15 × 0.5 × 6 × 4.3 = **USD 194/mes**
- Beneficio mensual ≈ **USD 1,587**
- Paquete Starter (2,500 + 497): ganancia neta ≈ 1,090/mes → recupera el setup en **≈ 2.3 meses**.
- Paquete Pro (6,000 + 1,200): ganancia neta ≈ 387/mes → recupera en **≈ 15.5 meses** → **no recomendar Pro** a este prospecto; recomendar Starter.

**Regla de recomendación**
| Si… | Recomendar |
|---|---|
| Recupera el setup en ≤ 4 meses con Starter y tiene un solo canal | Starter |
| Recupera en ≤ 6 meses con Pro, tiene volumen alto, agenda y necesita seguimiento | Pro |
| Varias sedes/canales, integraciones con sistemas propios, beneficio > USD 8,000/mes | Empresa |
| El beneficio mensual no supera la mensualidad de Starter | **No vender.** Decirlo con honestidad y ofrecer quedarse en contacto o el piloto pequeño |

> Pendiente: convertir esta lógica en una hoja de Google Sheets compartible (gratis) para usar en vivo.

## 5. Demo + solución (12–16 min)
> "Con lo que me contaste, déjame mostrarte algo. Armé un ejemplo con la información pública de [NEGOCIO]. No está terminado: el real se entrena con tus precios, tu tono y tus reglas."

- Comparte pantalla. Haz 3 preguntas que **él/ella mencionó** como frecuentes.
- Muestra una pregunta "difícil" y cómo el agente pasa a una persona.
- **Invítale a escribirle algo**. Es el momento de más impacto.
- Conecta con el dolor: "¿Esto, respondiendo a las 10 p. m. el sábado, cambiaría lo que me contaste?"

## 6. Oferta (16–18 min)
Presenta **una** recomendación, con su número de ROI:
> "Por lo que me cuentas, te recomiendo el paquete **[PAQUETE]**: [3 cosas que resuelven SUS dolores]. La implementación es **USD [MONTO]** y la mensualidad **USD [MENSUALIDAD]**, que incluye operación, ajustes y reporte. Con tus números, se recupera en unos **[N] meses**. Lo dejamos funcionando en 14 días desde que recibimos tu información."
>
> "El pago es 50 % para arrancar y 50 % cuando lo ves funcionando. Y si en 30 días el agente no responde por sí solo al menos el 80 % de las consultas, te devolvemos la implementación." *(garantía según `cerebro/00-plan-maestro.md`; confirmar vigencia con los dueños)*

**Si duda por monto o confianza → ofrecer la entrada: Diagnóstico + piloto pagado**
> "Si prefieres probar primero, hacemos un piloto: en [7–10] días dejamos el agente funcionando en tu web o un número de prueba con tus preguntas reales y medimos. Cuesta **USD [PRECIO PILOTO]** y se acredita al 100 % si luego sigues con un paquete."
*Precio sugerido del piloto: 300–500 USD (a confirmar por los dueños).*

## 7. Manejo de objeciones
Primero **reconoce**, luego **pregunta** para entender, después **responde** y **confirma**.

| Objeción | Respuesta |
|---|---|
| **"Está caro."** | "Entiendo. ¿Caro comparado con qué? Con tus números estimamos que hoy se escapan unos USD [X] al mes. La pregunta es si recuperar una parte vale más que lo que cuesta. Si no da, te recomiendo no hacerlo. ¿Revisamos los números juntos?" Si persiste: piloto pagado o paquete menor. **No bajar precio sin quitar alcance.** |
| **"Lo tengo que pensar."** | "Claro, es una decisión importante. Para ayudarte a pensarlo: ¿qué es lo que más te hace dudar, el monto, si va a funcionar, o el momento?" → atender la duda real. Cerrar con fecha: "¿Hablamos el [DÍA] a las [HORA] para que me digas sí o no?" |
| **"Tengo que consultarlo con mi socio/esposo/a."** | "Perfecto. ¿Qué crees que va a preguntar? ¿Te parece si hacemos una llamada de 15 minutos con los dos y le muestro la demo? ¿[DÍA] o [DÍA]?" |
| **"¿Y si la IA responde algo mal?"** | "Es la pregunta correcta. El agente solo usa información que tú apruebas, tiene temas prohibidos y pasa a una persona cuando no está seguro. Antes de salir en vivo lo pruebas tú. Y tienes la garantía de 30 días." |
| **"Mis clientes prefieren hablar con una persona."** | "Y seguirán pudiendo hacerlo. El agente cubre lo repetitivo y los horarios en que nadie puede contestar. ¿Qué prefiere tu cliente: un asistente que le responde ahora o una persona mañana?" |
| **"Ya tengo un chatbot / probé uno y no sirvió."** | "¿Qué pasó? … Los chatbots de menús frustran porque obligan a elegir opciones. Este entiende lo que la persona escribe, con tu información. Lo acabas de ver en la demo." |
| **"¿Tienen clientes / casos?"** | "Estamos abriendo los primeros cupos, por eso tenemos condiciones de cliente fundador y el piloto acreditable: puedes verlo funcionar con tu negocio antes de comprometerte con el paquete completo." **Nunca inventar clientes.** |
| **"No es el momento / después de fin de año."** | "Entiendo. Justamente: si arrancamos ahora, en enero ya está funcionando, que suele ser temporada alta. Si esperamos a enero, estaría listo en febrero. ¿Qué cambia en enero que no esté hoy?" |
| **"Mándame una propuesta."** | "Con gusto, te la envío hoy. Para que sea útil, confirmemos qué tiene que incluir: [resumen]. ¿Y la revisamos juntos el [DÍA] a las [HORA]?" → usar skill `propuesta`, guardar en `clientes/<cliente>/propuesta.md`. |
| **"¿Y mis datos / privacidad?"** | "Firmamos confidencialidad, el agente no pide datos sensibles innecesarios y la información queda en herramientas que tú controlas." |
| **"Lo puedo hacer yo con ChatGPT."** | "Puedes, y si tienes el tiempo, adelante. Lo que hacemos nosotros es conectarlo a tu WhatsApp, agenda y CRM, entrenarlo, probarlo y mantenerlo cada mes. La mayoría de dueños prefiere dedicar ese tiempo a su negocio." |

## 8. Cierre (18–20 min)
**Pregunta de cierre directa:**
> "Con lo que vimos, ¿te gustaría que arranquemos?"

Y **cállate**. Deja que responda.

**Si dice sí → paso de pago (en la misma llamada):**
> "¡Excelente! Te explico los pasos:
> 1. Hoy te envío por WhatsApp el resumen del acuerdo y los datos de pago.
> 2. El anticipo del 50 % (USD [MONTO]) puedes pagarlo por **transferencia ACH**, **Yappy** o **PayPal** (si es tarjeta o desde el exterior).
> 3. Al recibir el pago, te mando un formulario para que me compartas precios, horarios y preguntas frecuentes, y agendamos el arranque.
> 4. A los 14 días de tener tu información, lo ves funcionando. El otro 50 % se paga en la entrega.
> ¿Por cuál medio te queda más fácil pagar?"

**Mensaje de WhatsApp tras el sí (borrador, enviar el mismo día):**
> Hola [NOMBRE], ¡gracias por la confianza! 🙌 Resumen de lo acordado:
> • Paquete: [PAQUETE] — Implementación USD [MONTO], mensualidad USD [MENSUALIDAD] desde la entrega.
> • Anticipo 50 %: USD [ANTICIPO]
> • Datos de pago:
>   – ACH: [BANCO] · [TIPO DE CUENTA] · [NÚMERO] · a nombre de [TITULAR]
>   – Yappy: [NÚMERO/DIRECTORIO]
>   – PayPal: [LINK DE PAGO]
> • Al confirmar el pago te envío el formulario de arranque y agendamos la sesión de inicio.
> Cualquier duda, aquí estoy.

> ⚠️ Crear cobros o enlaces de pago (PayPal/Stripe) requiere **confirmación de los dueños** (regla 5 de `CLAUDE.md`). Los datos bancarios los completan ellos.

**Si dice "todavía no" → siguiente paso con fecha (nunca "te escribo"):**
> "Perfecto. Agendemos ya el [DÍA] a las [HORA] para que me des una respuesta. Mientras, te mando el resumen con tus números y la demo grabada."

**Si no califica → salida honesta:**
> "Con tus números, hoy no te recomiendo hacerlo: no recuperarías la inversión rápido. Si cambia el volumen de consultas, escríbeme y lo volvemos a ver."

## 9. Después de la llamada (5 min)
- [ ] Registrar en `clientes/pipeline.md`: fecha, números (C, P, T, V, H, S), paquete recomendado, objeción principal, siguiente paso y fecha.
- [ ] Enviar resumen + video de la demo el mismo día.
- [ ] Si pidió propuesta: skill `propuesta` → `clientes/<cliente>/propuesta.md`.
- [ ] Si pagó: skill `onboarding`.
- [ ] Anotar aprendizajes (objeciones nuevas, preguntas) para mejorar este guion.

### Metas del sprint
Agenda → diagnóstico ≥ 20 % · diagnóstico → cierre ≥ 25 % · 10 diagnósticos/semana desde la semana 2.
