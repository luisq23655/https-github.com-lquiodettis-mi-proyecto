# MCPs para autogestionar el negocio desde Claude

Un MCP (Model Context Protocol) conecta Claude con una herramienta externa para
que pueda **leer datos y ejecutar acciones** (crear productos, cobrar, enviar emails…).

## Dos formas de conectarlos
1. **Conectores de claude.ai** (recomendado): Configuración → Conectores → buscar
   el nombre → Conectar (inicias sesión con OAuth; no hace falta pegar claves).
   Funcionan en claude.ai, la app y en Claude Code.
2. **Archivo `.mcp.json`** de este repo: Claude Code los ofrece al abrir el
   proyecto. Ya incluye los servidores remotos oficiales marcados con ✅ abajo.

## Stack recomendado por función

| Función | MCP | Tipo / URL | Estado |
|---|---|---|---|
| Cobros, productos, suscripciones, links de pago | **Stripe** | Remoto `https://mcp.stripe.com` · conector oficial | ✅ en `.mcp.json` — conectar |
| Cobros alternativos (LatAm) | **PayPal** | Remoto `https://mcp.paypal.com/mcp` | ✅ en `.mcp.json` — conectar |
| Tienda online / catálogo / pedidos | **Shopify** | Conector oficial en claude.ai | ⬜ conectar si usamos Shopify |
| Diseño de mockups, portadas, creatividades | **Canva** | Conector oficial en claude.ai | ⬜ conectar |
| CRM y email marketing | **HubSpot** | Remoto `https://mcp.hubspot.com/anthropic` | ✅ en `.mcp.json` — conectar |
| Contabilidad y facturas | **Zoho Books** | Conector claude.ai | 🟢 **ya conectado** |
| Archivos (productos, entregables) | **Google Drive** | Conector claude.ai | 🟢 **ya conectado** |
| Email (soporte, ventas) | **Gmail** | Conector claude.ai | 🟢 ya instalado (plugin) |
| Agenda (llamadas de venta) | **Google Calendar** | Conector claude.ai | 🟢 ya instalado (plugin) |
| Base de conocimiento / SOPs | **Notion** | Conector claude.ai | 🟡 instalado, falló al conectar en la nube |
| Gestión de tareas | Asana / ClickUp / Linear / Monday | Conectores claude.ai | 🟡 instalados, fallaron al conectar en la nube |
| Código / este cerebro | **GitHub** | Conector | 🟢 ya conectado |
| Investigación web y competidores | **Playwright** (navegador) | Local `npx @playwright/mcp` | ✅ en `.mcp.json` |

Leyenda: 🟢 operativo · ✅ configurado, falta autorizar · 🟡 instalado con error · ⬜ pendiente.

## Prioridad de conexión
1. **Stripe** (o PayPal) → sin cobros no hay negocio.
2. **Canva** → creatividades y mockups de producto.
3. **Shopify** *o* una plataforma de producto digital (Gumroad/Lemon Squeezy vía Stripe).
4. **HubSpot** (o la herramienta de email que elijamos) → listas y secuencias.
5. **Notion** → reintentar conexión (el error fue del proxy del entorno en la nube,
   no de la cuenta).

## Qué podrá hacer Claude con este stack
- Crear un producto + precio + link de pago en Stripe en un solo paso.
- Generar portada y mockups en Canva.
- Subir el entregable a Drive y compartir el enlace al comprador.
- Registrar la venta/factura en Zoho Books.
- Contactar leads y responder soporte desde Gmail.
- Reporte semanal de ingresos, reembolsos y MRR → `bitacora.md`.

## Seguridad
- Usar claves **restringidas** de Stripe (solo los permisos necesarios) si se
  usa clave en vez de OAuth.
- Nunca guardar claves en este repo. Usar variables de entorno.
- Claude pide confirmación antes de cobrar, reembolsar, publicar o enviar emails masivos.
