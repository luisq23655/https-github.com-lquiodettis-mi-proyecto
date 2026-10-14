# Guion — Demo en vivo en menos de 30 minutos (con Claude)

> Para qué: mostrar en la llamada de diagnóstico un agente que **ya responde como el negocio del prospecto**. Mientras no tengamos casos de éxito, la demo es nuestra mejor prueba.
> Costo: 0 USD (Claude ya disponible). Sin integraciones: se muestra en el chat de Claude o en un Proyecto de Claude compartiendo pantalla.

## Reglas
- Solo **información pública** del negocio (web, Google Maps, Instagram, anuncios). Nada de datos personales de pacientes/clientes.
- Si no se encuentra un dato (ej. precio), **el agente no lo inventa**: usa "[confirmar con el negocio]" o dice que un asesor lo confirma. Eso también demuestra seguridad.
- Siempre se presenta como **demo**: "Esto lo armé con su información pública en media hora; el real se entrena con sus datos y reglas".
- Si se graba para redes, usar un negocio **ficticio** y decirlo en el video.

## Cronómetro (≤ 30 min)
| Min | Paso | Resultado |
|---|---|---|
| 0–10 | Recolectar información | Ficha del negocio |
| 10–15 | Generar el prompt del agente | Instrucciones del sistema |
| 15–18 | Montarlo en Claude | Agente listo |
| 18–28 | Probar con 8 preguntas | Ajustes hechos |
| 28–30 | Preparar el guion de la llamada | 3 preguntas + 1 difícil |

---

## Paso 1 — Recolectar información (0–10 min)
Copia en un documento de texto, sin ordenar mucho:
- Nombre, tipo de negocio, ciudad/sector, dirección, horarios.
- Servicios/productos y precios si están publicados.
- Preguntas que la gente hace en comentarios de Instagram o reseñas de Google.
- Tono de su comunicación (formal "usted", cercano "tú", con emojis o no).
- Cómo se agenda hoy (link, llamada, WhatsApp).
- Lo que **no** debe hacer el agente según la vertical (ver tabla del Paso 2).

> Atajo: pega la URL de su web y redes en Claude y pídele: *"Extrae de esta información pública: servicios, precios, horarios, ubicación, formas de contacto y preguntas frecuentes de clientes. Marca como [NO ENCONTRADO] lo que no aparezca."* (Si Claude no tiene acceso web en ese momento, copia y pega el texto de las páginas).

## Paso 2 — Generar el prompt del agente (10–15 min)
Pega esto en Claude junto con la ficha del Paso 1:

```
Actúa como diseñador de agentes de atención por WhatsApp. Con la información del
negocio que te paso abajo, escribe las INSTRUCCIONES DE SISTEMA para un asistente
virtual que atenderá a sus clientes por WhatsApp. Usa esta estructura:

1. Identidad: se llama "[NOMBRE DEL ASISTENTE]", asistente virtual de [NEGOCIO].
   Se presenta como asistente virtual (no finge ser humano).
2. Tono: [tú/usted], cálido, profesional, español de Panamá, mensajes cortos
   (máx. 3–4 líneas, como en WhatsApp), máx. 1 emoji por mensaje.
3. Objetivo: resolver la duda y llevar a la persona al siguiente paso
   ([agendar cita / visita / clase de prueba / consulta]).
4. Información del negocio: servicios, precios, horarios, ubicación, políticas.
   Si un dato no está, NO lo inventes: di que un asesor lo confirma.
5. Flujo de calificación: haz estas preguntas, de una en una:
   [PREGUNTAS DE LA VERTICAL]
6. Agendamiento: ofrece 2 horarios concretos dentro del horario de atención
   (inventa disponibilidad de ejemplo solo para la demo) y pide nombre y teléfono.
7. Objeciones: cómo responder a "está caro", "lo voy a pensar", "¿tienen otro horario?".
8. Escalamiento a humano: cuándo pasar la conversación a una persona y qué decir.
9. Prohibido: [LÍMITES DE LA VERTICAL].
10. Al cerrar cada conversación, genera un resumen interno de una línea
    con: nombre, necesidad, calificación (caliente/tibio/frío) y siguiente paso.

INFORMACIÓN DEL NEGOCIO:
[PEGAR FICHA]
```

### Preguntas y límites por vertical
| Vertical | Preguntas de calificación | Límites (prohibido) | Escalar a humano cuando… |
|---|---|---|---|
| Clínica | Tratamiento de interés · ¿primera vez? · ¿seguro o particular? · preferencia de día/hora | Diagnosticar, recetar, prometer resultados clínicos, dar precios no publicados como definitivos | Dolor o urgencia, pregunta clínica, queja |
| Inmobiliaria | Compra o alquiler · zona · presupuesto · recámaras · ¿financiamiento/precalificado? · fecha de mudanza | Prometer aprobación bancaria, negociar precio, confirmar disponibilidad no verificada | Oferta formal, negociación, lead con presupuesto alto |
| Academia | Curso o nivel · edad (si es para un hijo) · modalidad · horario · ¿cuándo quiere empezar? | Garantizar resultados (ej. "inglés fluido en 3 meses"), becas no publicadas | Pagos, becas, casos especiales |
| Firma legal | Área (migración, sociedades, laboral, familia, otro) · resumen breve · urgencia/fechas límite · ¿persona o empresa? | Dar asesoría legal, opinar sobre el caso, estimar probabilidad de éxito, dar honorarios que no sean de consulta | Siempre que pidan opinión legal, plazos legales urgentes |

## Paso 3 — Montarlo en Claude (15–18 min)
**Opción A — Proyecto de Claude (recomendada)**
1. Claude → *Proyectos* → *Crear proyecto* → nombre: "Demo — [NEGOCIO]".
2. Pegar el prompt generado en las **instrucciones del proyecto**.
3. Subir la ficha del negocio como archivo de conocimiento.
4. Abrir un chat nuevo dentro del proyecto: ese es el agente.

**Opción B — Chat directo (más rápida)**
Iniciar un chat nuevo y pegar: *"Desde ahora eres el asistente de WhatsApp descrito abajo. Responde solo como ese asistente. Mi siguiente mensaje es de un cliente."* + el prompt.

**Opción C — Artifact de chat con aspecto de WhatsApp (si hay 10 min extra)**
Pedir a Claude: *"Crea un artifact HTML que simule una pantalla de WhatsApp con el logo/nombre de [NEGOCIO], donde yo escribo como cliente y el asistente responde usando estas instrucciones."* Más impacto visual; probarlo antes de la llamada.

## Paso 4 — Probar con 8 preguntas (18–28 min)
Escribe como cliente y corrige lo que falle (editar instrucciones y volver a probar):
1. Saludo genérico: "Hola, buenas noches"
2. Precio: "¿Cuánto cuesta [SERVICIO PRINCIPAL]?"
3. Logística: "¿Dónde quedan? ¿Tienen estacionamiento?"
4. Calificación completa hasta agendar.
5. Objeción: "Uy, está caro."
6. Dato que no existe: "¿Aceptan [SEGURO / MÉTODO RARO]?" → debe decir que un asesor confirma.
7. Límite de la vertical: (clínica) "¿Esto que tengo es grave?" · (legal) "¿Voy a ganar el caso?" → debe escalar.
8. Mensaje informal con errores: "bnas q precio el blanqueamient0 y si hay pa mñn"

**Checklist de calidad**
- [ ] Mensajes cortos, tono correcto, sin inventar precios.
- [ ] Siempre propone el siguiente paso.
- [ ] Escala bien en los casos límite.
- [ ] Genera el resumen interno al final.

## Paso 5 — Preparar el momento de la llamada (28–30 min)
- Elegir **3 preguntas** que el prospecto probablemente reconozca como suyas (de sus reseñas/comentarios).
- Elegir **1 pregunta difícil** para mostrar el escalamiento.
- Dejar la pestaña lista, con letra grande (zoom 125 %).
- Plan B si falla internet: captura de pantalla o video de 60 s grabado con la conversación de prueba.

## En la llamada (4 minutos, ver bloque 5 de `marketing/guiones/llamada-diagnostico.md`)
1. "Armé esto con la información pública de [NEGOCIO] en media hora."
2. Mostrar las 3 preguntas + la difícil.
3. **"Escríbele tú algo, como si fueras un cliente."** (le pasas el control o dictas lo que dice).
4. "Lo que ves es lo básico. El real se entrena con tus precios, tu agenda y tus reglas, y responde en tu WhatsApp."

## Después
- Guardar el prompt en `clientes/<cliente>/demo-prompt.md`: si firma, es el punto de partida de la implementación (ahorra horas).
- Si el prospecto lo autoriza, enviarle un video corto de la demo como recordatorio.
- Las demos repetidas por vertical se convierten en **plantillas** (ver `cerebro/00-plan-maestro.md`, fase 3: plantillas por nicho).
