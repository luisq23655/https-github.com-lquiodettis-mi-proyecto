# Cadena end-to-end de productos digitales operada con Claude (connectors, Claude Code, MCP) — estado a octubre 2026

> Method note: research done 2026-10-14. Live fetching of vendor pages (docs.stripe.com, etsy.com, kdp.amazon.com, docs.whop.com, developers.notion.com) was blocked by the sandbox proxy, so vendor facts come from (a) the live Claude connector directory searched via the in-session registry tool (marked "Claude directory, checked 2026-10-14") and (b) web-search summaries of vendor/third-party pages. Anything not confirmed by a vendor page is flagged UNVERIFIED.

## 1. Which official or reputable MCP servers/connectors exist per tool and pipeline step?

### Takeaway
Most of the pipeline now has an official, vendor-run connector in Claude's directory: Stripe, PayPal, Shopify, Canva, Figma, Notion, Gmail, Google Drive/Sheets/Docs/Slides, Mailchimp, Klaviyo, beehiiv, HubSpot, Zapier, Make, n8n and Zoho Books. Whop and Hotmart also run official MCP servers. Gumroad, Lemon Squeezy, Etsy and Skool have only community or unofficial servers. Kit (ConvertKit) may have an official server, but it is unverified.

### Cited Findings

**Directory connectors (in the claude.ai connector registry, checked 2026-10-14 with the in-session SearchMcpRegistry tool. They are first-party listings, not community projects):**
- **Stripe**: "Payment processing and financial infrastructure tools". Its tools include `stripe_api_search`, `stripe_api_details`, `stripe_api_read`, `stripe_api_write`, `get_balance_summary`, `search_stripe_documentation` and `stripe_implementation_planner`. It uses OAuth. Source: Claude connector directory (registry search, 2026-10-14).
  - The remote endpoint is `https://mcp.stripe.com/` (OAuth or API key). The local npm package is `@stripe/mcp`, with a `--tools` flag that limits which tools are enabled. Third-party listings give tool counts of 20 to 23 and name payment-link tools such as `create_payment_link` / `paymentLinks.create`. Names and counts differ between sources — [remote-mcp.com](https://www.remote-mcp.com/servers/stripe); [lobehub](https://lobehub.com/mcp/stripe-stripe-mcp); [lagrowthmachine](https://lagrowthmachine.com/stripe-mcp/). Note that the directory version (checked 2026-10-14) shows generic `stripe_api_read/write` tools rather than per-object tools, so the toolset seems to have been consolidated (inference). Official page: docs.stripe.com/mcp (UNVERIFIED, fetch blocked).
- **PayPal**: "Access PayPal payments platform". Its tools include `create_product`, `list_product`, `create_invoice`, `list_invoices`, `list_disputes`, `accept_dispute_claim` and about 20 more. Source: Claude directory.
  - PayPal docs describe a local server, `npx -y @paypal/mcp --tools=all`, which needs an access token and an environment setting (SANDBOX/PRODUCTION) and runs on Node 18+. They also describe remote servers at `https://mcp.sandbox.paypal.com/http` and `https://mcp.paypal.com/http`. The server covers orders, invoices, subscriptions, shipment tracking, transactions and disputes — [developer.paypal.com/ai-tools/mcp-server](https://developer.paypal.com/ai-tools/mcp-server); [PayPal gitbook](https://paypal.gitbook.com/agent-toolkit-and-mcp-server/mcp-server/set-up-a-local-mcp-server). The Python `paypal-mcp-server` projects on Glama are unofficial — [glama](https://glama.ai/mcp/servers/akramIOT/paypal_mcp_server).
- **Shopify**: "Build, manage, and analyze your Shopify store". Its tools include `search_products`, `get-product`, `create-product`, `update-product`, `list-orders`, `list-customers` and 17 more. The directory lists it as authless. Source: Claude directory. A separate **Shop** connector (Shopify's shopper-side app) has `create_checkout`, `create_cart` and `search_catalog`.
  - Web sources (from before the directory listing, or written without it) describe Shopify's official products as the **Storefront MCP** (every store has a live endpoint, built for shoppers), the **Customer Account MCP**, the **Checkout MCP** (preview, approved partners only) and the **Dev MCP / Shopify AI Toolkit**. The AI Toolkit was open-sourced on April 9, 2026; it gives docs and GraphQL schema access and touches no production data. The same sources say there is no official Admin MCP, and the community `shopify-mcp` package (`npx shopify-mcp`, about 31 Admin GraphQL tools) fills that gap. Apps created after January 2026 use OAuth client credentials — [mcp.directory guide](https://mcp.directory/blog/shopify-mcp-complete-guide-2026); [tenten](https://shopify.tenten.co/shopify-ai-dev-ecosystem-mcp-server-the-cto-s-guide-to-agentic-commerce-architecture-in-2026). CONFLICT: the claude.ai directory now lists a Shopify connector with create-product and update-product tools, so a store-management connector does exist inside Claude. Verify on shopify.dev.
- **Canva**: "Search, create, autofill, and export Canva designs". Its tools include `search-designs`, `get-design`, `get-design-content`, `import-design-from-url` and 9 more. Source: Claude directory. Third-party listings give the endpoint as `https://mcp.canva.com/mcp` (OAuth, about 17 tools including generate-design and export-design to PDF or image) — [remote-mcp.com](https://www.remote-mcp.com/servers/canva); [skillsplayground](https://skillsplayground.com/connectors/canva/). The URL is UNVERIFIED against Canva docs.
- **Figma**: "Generate diagrams and better code from Figma context". Its tools include `get_design_context`, `get_screenshot`, `get_metadata`, `get_variable_defs` and `get_figjam`. Source: Claude directory. These tools are mostly read and design-to-code, not mockup generation.
- **Notion**: tools include `search`, `fetch`, `create-pages`, `update-page`, `create-database` and `update-database`. Source: Claude directory.
- **Gmail**: tools include `create_draft`, `get_message`, `forward`, `create_label` and `create_filter`. Source: Claude directory. The visible tools are draft-centric.
- **Google Drive** (connected in this session, with tools `create_file`, `share_file`, `copy_file` and others), plus **Google Sheets** (`get_values`, `update_values`, `update_formulas`), **Google Docs** and **Google Slides**. Source: Claude directory.
- **Intuit Mailchimp**: "Create marketing campaigns". Its tools include `campaign-planner`, `edit-campaign`, `save-to-mailchimp`, `apply-theme` and `get-email-themes`. Source: Claude directory.
- **Klaviyo**: tools include `get_campaigns`, `create_campaign`, `assign_template_to_campaign_message`, `get_catalog_items` and `get_metrics`. Source: Claude directory.
- **beehiiv**: "draft, design, analyze". It has about 198 tools, including automations, segments and community management. Source: Claude directory.
- **HubSpot**: tools include `get_crm_objects`, `get_marketing_email_analytics`, `get_campaign_attribution_reports` and about 28 more. Source: Claude directory.
- **Zapier**: "Automate workflows across thousands of apps". The server URL is generated per account in Zapier MCP — [easymcpai guide](https://easymcpai.com/blog/claude-connectors-complete-guide). Source: Claude directory.
- **Make**: tools include `scenarios_list/create/update/run/activate` and about 59 more. Source: Claude directory.
- **n8n**: tools include `search_workflows`, `execute_workflow`, `get_execution` and `publish_workflow`. Source: Claude directory.
- **Zoho Books** ("Zoho Books MCP for Smart Finance Ops", connected in this session): tools include `create_invoice`, `create_item`, `create_contact`, `create_customer_payment`, `create_expense`, `list_chart_of_accounts` and `list_bank_accounts`. Source: Claude directory and this session's tool list.
- **AnythingMCP**: a third-party hosted connector in the directory that wraps 180+ APIs, including **Etsy**, and is paid after a trial. Source: Claude directory; [anythingmcp.com](https://anythingmcp.com/ru/guides/connect-convertkit-to-claude).

**Official vendor servers outside the Claude directory listing:**
- **Whop (official)**: the hosted server is `https://mcp.whop.com/mcp` and uses browser sign-in. It requests an MCP admin scope across every business the user manages. There is also a local `@whop/mcp` package (API key) and a docs-only server at `docs.whop.com/mcp` — [docs.whop.com/developer/ai/overview](https://docs.whop.com/developer/ai/overview) (via search summary).
- **Hotmart (official)**: the "MCP Hotmart" help article describes connecting to Claude Desktop and ChatGPT Desktop. It covers sales, subscriptions, products, students and commissions, and allows some actions (creating coupons, changing subscriptions) within profile permissions — [help.hotmart.com](https://help.hotmart.com/en/article/48741895558541/mcp-hotmart-how-can-i-view-data-and-take-actions-in-my-account-using-ai-). A community PyPI package `hotmart-mcp` also exists — [pypi](https://pypi.org/project/hotmart-mcp/).
- **Kit / ConvertKit (official claim, UNVERIFIED)**: a marketplace directory says Kit ships an official MCP at `app.kit.com/mcp` — [claudemarketplaces](https://claudemarketplaces.com/mcp/aplaceforallmystuff/mcp-kit). Community options include `aplaceforallmystuff/mcp-kit` (unmaintained), `dancumberland/kit-mcp` (13 tools on API v4), Pipedream and CData — [claudemarketplaces kit-mcp](https://claudemarketplaces.com/mcp/dancumberland/kit-mcp); [Pipedream](https://mcp.pipedream.com/app/convertkit). Kit did not appear in the claude.ai directory search on 2026-10-14.

**Community or unofficial only:**
- **Gumroad**: `gumroad-mcp` by rmarescu (`npx gumroad-mcp@latest init`, access token). It can get, enable and disable products, read sales and manage offer codes — [npm](https://npmjs.com/package/gumroad-mcp). Another option is keithah/gumroad-mcp — [lobehub](https://lobehub.com/mcp/keithah-gumroad-mcp). I found no official Gumroad server.
- **Lemon Squeezy**: options are Pipedream (3 actions), `lemonsqueezy-mcp` by heysash (claims 44 tools, stdio), atharvagupta2003/mcp-lemonsqueezy (Python) and IntrepidServicesLLC — [Pipedream](https://mcp.pipedream.com/app/lemon_squeezy); [glama](https://glama.ai/mcp/servers/integrations/lemonsqueezy). I found no official server.
- **Etsy**: community servers built on Open API v3, including administrativetrick/etsy-mcp-server (search and read) and profplum700/etsy-mcp-server (OAuth refresh token) — [github](https://github.com/administrativetrick/etsy-mcp-server); [mcpservers.org](https://mcpservers.org/servers/profplum700/etsy-mcp-server). I found no official Etsy MCP.
- **Skool**: no public API exists. The community servers reverse-engineer internal endpoints with session cookies (one lists 13 tools and says it is "not affiliated"), and viaSocket offers 1 action (invite a member) — [glama](https://glama.ai/mcp/servers/a5mttm2fjo); [skool-api.cristiantala.com](https://skool-api.cristiantala.com/integrations/skool-mcp/); [viaSocket](https://viasocket.com/mcp/skool).

**Pipeline map (step → tool → what Claude can automate → what needs a human):**

| Step | Tools / MCP | What Claude can automate | What needs a human |
|---|---|---|---|
| Research | Web search, Etsy community MCP (search listings and trends), Shopify/Hotmart/Gumroad sales data | Niche and competitor scans, keyword lists, summaries of sales data | Final niche choice and validation with real buyers |
| Creation | Native file skills (docx/xlsx/pptx/pdf), Claude Code, Notion, Google Docs/Sheets | Drafting ebooks, templates, planners, spreadsheets, code products, courses | Expertise, fact-checking, originality and quality control (needed for Etsy and KDP rules) |
| Design/mockups | Canva (create, autofill, export), Figma (mostly read and design-to-code), Brandfetch | Autofilling templates and exporting PDF/PNG covers and mockups | Visual QA, brand taste, image rights |
| Listing/checkout | Shopify connector, Stripe (products, prices, payment links), PayPal (create_product), Whop, Hotmart, Gumroad (community), Etsy (community, mostly read) | Creating products, prices and payment links; drafting listing copy | Account KYC and onboarding, AI-disclosure checkboxes, final publish approval |
| Payment | Stripe, PayPal, Whop, Hotmart | Reading balances, invoices, dispute status | Refunds, dispute acceptance, payouts. Keep these human-confirmed |
| Delivery | Platform-native delivery (Gumroad, Hotmart, Whop, Shopify digital apps); Google Drive `share_file`; Zapier/Make/n8n | Wiring triggers (payment → share link or email) | Testing the flow end to end, access revocation |
| Email marketing | Mailchimp, Klaviyo, beehiiv, Kit (unverified official), HubSpot | Drafting campaigns and sequences, segmenting, reporting | Approving sends, list consent and compliance (CAN-SPAM/GDPR) |
| Support | Gmail (drafts), HubSpot, Hotmart/Whop data, Notion FAQ | Triage and drafted replies, looking up order status | Sending sensitive replies, refunds and exceptions |
| Accounting/analytics | Zoho Books, Stripe balance, Google Sheets, HubSpot analytics | Turning sales into invoices and expenses, building KPI sheets | Tax filing, reconciliation sign-off |

### Inferences
- The most "official" chain available inside Claude today is Canva → Stripe or PayPal (product plus payment link) → Google Drive delivery or Zapier/Make/n8n glue → Mailchimp, Klaviyo or beehiiv → Gmail drafts → Zoho Books. Every link in it has a directory connector.
- For Latin American and Spanish-speaking creators, Hotmart is the only infoproduct marketplace found with an official MCP. That makes it the strongest "marketplace plus delivery" option in this chain.
- Gumroad, Lemon Squeezy, Etsy and Skool integrations would rely on community code with API keys or session cookies. They are higher risk and should be limited to read-only or sandbox use.
- Automation glue (Zapier, Make, n8n) is the practical way to handle event-driven steps such as delivering on payment. Claude connectors are request-driven, not webhook listeners, unless scheduled through Claude Code routines.

### Gaps
- Exact current Stripe tool names and whether `mcp.stripe.com` still exposes per-object tools such as `create_payment_link`. The vendor doc fetch was blocked.
- Whether Kit's official MCP (`app.kit.com/mcp`) exists. It was not confirmed on kit.com.
- The exact remote URLs for Notion, Figma, Mailchimp, Klaviyo, beehiiv, HubSpot and Zoho Books MCPs (the directory install handles them; vendor docs were not fetched).
- I found no official MCP for Gumroad, Lemon Squeezy (now owned by Stripe, which is my background knowledge, not verified here), Etsy or Skool.

## 2. What can Claude do natively to produce digital products?

### Takeaway
Anthropic's pre-built Agent Skills let Claude create real .docx, .xlsx, .pptx and .pdf files in its code-execution sandbox. Custom Skills, artifacts (HTML/React pages and apps) and Claude Code cover templates, mini-apps, code products and automation scripts.

### Cited Findings
- Anthropic-managed skills use the short IDs `pptx`, `xlsx`, `docx` and `pdf`. They run in the code execution environment and are specified through the `container` parameter in the Messages API. Custom skills are managed through the Skills API — [platform.claude.com skills guide](https://platform.claude.com/docs/en/api/skills-guide); [Agent Skills quickstart](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/quickstart).
- In the Claude apps, users enable "code execution and file creation" in settings; the four built-in skills then work automatically — [Tom's Guide](https://www.tomsguide.com/ai/claude-has-4-built-in-skills-i-use-constantly-heres-how-to-find-them).
- Files created through the API live in the sandbox and must be downloaded with the Files API — [Agno docs](https://docs.agno.com/models/providers/native/anthropic/usage/skills.md).
- Skill files are visible at `/mnt/skills/public/` (community observation) — [Simon Willison](https://simonwillison.net/2025/Oct/10/claude-skills/).
- In this session's environment, Claude Code also has skills for docx, xlsx, pptx and pdf, plus Artifacts (published HTML pages with runtime capabilities) and Claude Docs. Source: this session's tool and skill list (first-hand).

### Inferences
- Product types Claude can produce end to end: printable PDF planners and workbooks, Excel or Sheets templates (budgets, trackers), Notion templates through the Notion connector, PowerPoint or Canva slide templates, ebooks (docx → pdf), prompt-free guides, and small web apps or calculators as artifacts or code.
- A human still has to handle subject-matter expertise, final visual polish, and the human-contribution level that marketplace rules require.

### Gaps
- I did not verify any limits on commercial use of Claude outputs. That would mean checking Anthropic's consumer and commercial terms (not fetched).

## 3. Examples or case studies of people running digital product businesses with Claude/MCP automation

### Takeaway
There are no rigorous, numbers-backed case studies. The evidence is anecdotal: podcast episodes, personal blogs and courses describe creators connecting Kit, Shopify, Airtable and Meta Ads to Claude through MCP.

### Cited Findings
- In the Creator's MBA episode 274, "MCPs in Claude: how 6 founders are actually automating their businesses", founders discuss Kit, Airtable, Meta Ads and Shopify, membership dashboards, and scheduled content and reporting tasks — [Buzzsprout](https://creatorsmba.buzzsprout.com/2325739/episodes/19284003-274-mcps-in-claude-how-6-founders-are-actually-automating-their-businesses).
- In a podcast episode, five online-business owners describe using MCP connectors in Claude. One says connecting the Kit MCP "stopped me in my tracks". No metrics are given — [Castbox](https://castbox.fm/channel/6479686).
- A German solopreneur write-up describes a Mac Mini running Claude Code 24/7 with Supabase (leads and content queue), Blotato (social publishing) and Perplexity MCPs. It is unverified and personal — [jeanhinz.io](https://jeanhinz.io/blog/claude-cowork-solopreneur-setup/).
- A Towards AI article describes a solo copywriting business that productized a prompt library into a Gumroad product (about $6K/month claimed). It does not involve MCP — [Towards AI](https://pub.towardsai.net/turn-claude-into-a-copy-machine-building-a-6k-month-ad-copywriting-business-solo-78d6720faa43).
- A webinar claims "8+ hours saved per week" across 50+ automation cases, with no published detail — [Luma](https://luma.com/45p6bbk8). Ole Lehmann's newsletter describes the friction of setting up MCP — [beehiiv](https://olelehmann.beehiiv.com/p/i-put-claude-on-steroids-f82b).

### Inferences
- Real-world use is concentrated in email (Kit), analytics and reporting, and content pipelines, not in fully autonomous selling.

### Gaps
- I found no verified revenue or time-saving data for an MCP-automated digital product store.

## 4. Limitations and risks: marketplace AI rules, payment tool safety, API restrictions

### Takeaway
Etsy allows AI-assisted items with disclosure but bans selling AI prompts. KDP requires disclosing AI-generated text, images and translations (but not AI-assisted work) and limits submission volume. Payment MCPs should use restricted or test-mode keys and human confirmation, because Stripe's guidance places approval on the client side. Community servers (Gumroad, Etsy, Skool) carry credential and ToS risk.

### Cited Findings
- **Etsy**: the Creativity Standards (July 2024) require sellers to disclose AI use and to label the level of human involvement in item details — [TechCrunch](https://techcrunch.com/2024/07/09/etsy-new-seller-policy-2024-generative-ai). Selling AI prompts is prohibited (for example, "10,000 Midjourney Prompts") — [CO/AI](https://getcoai.com/news/etsy-balances-ai-and-authenticity-with-new-creativity-standards-for-sellers). The official page frames the mission as "Keep Commerce Human" — [etsy.com/legal/creativity](https://etsy.com/legal/creativity) (not fetched). Third-party 2026 guides mention a "Designed by seller" attribute plus a description disclosure. This is UNVERIFIED — [Promptless Press](https://www.promptlesspress.com/blog-etsy-ai-policy-2026-digital-products); [Listadum](https://www.listadum.com/blog/etsy-creativity-standards). There are unverified vendor-blog reports of automated AI flagging — [aimetadatacleaner](https://aimetadatacleaner.com/blog/etsy-ai-disclosure-metadata-guide-2026).
- **Amazon KDP**: since September 2023, authors must disclose AI-generated text, images (including covers) and translations, even if those were substantially edited afterwards. AI-assisted work (self-written then refined, or brainstorming) needs no disclosure. Amazon also limited the number of titles that can be submitted — [The Bookseller](https://thebookseller.com/news/amazon-revises-kdp-guidelines-to-compel-disclosure-of-ai-content); [Publishers Weekly](https://www.publishersweekly.com/pw/by-topic/digital/content-and-e-books/article/93122-amazon-issues-new-ai-guidelines-for-its-kdp-platform.html); [Decrypt](https://decrypt.co/198416/amazon-adds-self-publishing-restrictions-counter-flood-ai-books?amp=1). The official page is kdp.amazon.com help topic G200672390 (not fetched). A May 2026 post discusses declaring AI use — [ebookpbook](https://www.ebookpbook.com/2026/05/27/declare-ai-use-kdp/).
- **Stripe safety**: use restricted keys (`rk_`) scoped to what the agent needs, start in test mode, and enable human confirmation of write tools. The confirmation is client-side and Stripe's server has no gate. OAuth on mcp.stripe.com is more granular and revocable — [gamut.so](https://gamut.so/blog/stripe-mcp-server-guide); [scalekit](https://www.scalekit.com/blog/stripe-mcp-vs-api); [dailyaiworld](https://dailyaiworld.com/mcp-directory/build-stripe-mcp-restricted-keys-human-approval-production). These are secondary sources; the official docs.stripe.com/mcp page was not fetched.
- **PayPal**: provides a sandbox endpoint (`mcp.sandbox.paypal.com/http`) separate from production — [developer.paypal.com](https://developer.paypal.com/ai-tools/mcp-server).
- **Whop**: the hosted MCP requests an admin scope that can act across every business the user manages — [docs.whop.com](https://docs.whop.com/developer/ai/overview).
- **Skool**: there is no public API. MCPs use reverse-engineered endpoints and session cookies, which risks breakage and the account — [glama](https://glama.ai/mcp/servers/a5mttm2fjo).
- **Shopify**: community Admin servers are "not vetted by Shopify". Apps created after January 2026 must use OAuth client credentials — [mcp.directory](https://mcp.directory/blog/shopify-mcp-complete-guide-2026).

### Inferences
- Best practice for this chain: keep Claude in "draft and propose" mode for irreversible money actions (refunds, disputes, payouts, price changes on live products) and for publishing listings. Use read-only or restricted keys and sandbox environments, and keep AI-disclosure decisions with the human seller.
- Pure "AI prompt packs" are a poor product choice for Etsy because Etsy bans them.

### Gaps
- I could not fetch the official text of Etsy's Creativity Standards, KDP's G200672390 page or docs.stripe.com/mcp, because the sandbox blocks network access. Exact current wording should be checked live.
- Gumroad, Hotmart and Whop AI-content policies were not researched.
- I did not check Etsy API terms on AI agents or automated listing creation.
