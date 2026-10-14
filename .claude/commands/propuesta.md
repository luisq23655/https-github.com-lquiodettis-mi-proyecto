---
description: Genera propuesta comercial a partir de notas de una llamada de diagnóstico
argument-hint: <nombre del cliente>
---
Cliente: $ARGUMENTS

1. Lee las notas en `clientes/<cliente>/notas.md` (si no existen, pídelas).
2. Pide al agente `estratega-oferta` el paquete y precio adecuados según la oferta vigente.
3. Pide al agente `ventas` la propuesta: diagnóstico, solución, entregables, plazos,
   precio, garantía, próximos pasos. Guardar en `clientes/<cliente>/propuesta.md`.
4. Presenta un resumen y espera aprobación antes de enviar.
