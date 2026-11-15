# Directory submissions

Text to paste into each MCP directory. Keep it in step with the docs page and README.

## Shared text

**Name:** WebDesk

**One line (under 100 characters):** Build complete one-page small business websites from a short brief. Prepaid credits via Stripe.

**Short description:**
WebDesk lets an AI agent build a complete one-page website for a small business. The agent sends a short brief
(business name, type, services, location, tone, palette), WebDesk writes and builds the site, and the agent gets back a
ZIP of plain HTML, CSS and JavaScript that the business owns and can host anywhere. Each website includes one free
redo. Payment is by prepaid credits, one per website, bought through Stripe Checkout, from $29 USD for one or $23 each
in a pack of 25. The agent can top up credits itself with buy_credits.

**Server URL:** https://redcenterstudio.com/api/webdesk/mcp
**Transport:** Streamable HTTP
**Auth:** bearer API key in the Authorization header (`Bearer wd_...`), free to create at https://redcenterstudio.com/webdesk/agents/
**Tools:** create_website, get_website_status, get_download_link, revise_website, get_credit_balance, buy_credits
**Docs:** https://redcenterstudio.com/webdesk/agents/docs/
**Repository:** https://github.com/Red-Center-Studio/webdesk-mcp
**Category:** Developer tools / Web design / Business
**Tags:** websites, small business, website builder API, landing pages, static site, Stripe
**Pricing:** Paid (prepaid credits from $29 USD per website)
**Contact:** Hello@redcenterstudio.com

### Free tools server (separate listing)

**Name:** Red Center Studio free tools
**One line:** Free website checks: AI search readiness, AI crawler access, domain health, DNS risks, Bubble errors.
**Short description:**
Five free checks as MCP tools, no API key. geo_audit scores how ready a website is for AI assistants and search
engines (AI crawler access, sitemap, llms.txt, structured data, titles) and writes copy-paste fixes. ai_crawler_check
shows whether the AI search crawlers from OpenAI, Anthropic, Perplexity and Google can reach a site, by robots.txt and
a firewall test. domain_health checks domain and certificate expiry, DNS basics and email security (SPF, DMARC,
DKIM). spof_scan reads public DNS to show which companies run a business's email, sign-in, DNS and website, and what
one outage would stop. decode_error explains error messages from apps built on Bubble, with the likely cause and the
fix guide. Results contain no prices or offers. Rate limited per connection.
**Server URL:** https://redcenterstudio.com/api/tools/mcp
**Transport:** Streamable HTTP, no auth
**Tools:** geo_audit, ai_crawler_check, domain_health, spof_scan, decode_error
**Docs:** https://redcenterstudio.com/webdesk/agents/docs/#free-tools
**Pricing:** Free

## Official MCP Registry (registry.modelcontextprotocol.io)

Uses `server.json` and `rcs-tools/server.json` in this repository. Publishing needs the `mcp-publisher` CLI and a
GitHub login that is a member of the Red-Center-Studio organisation (the `io.github.Red-Center-Studio/` namespace).

1. Install the publisher: download the release for your system from
   https://github.com/modelcontextprotocol/registry/releases (file `mcp-publisher_<os>_<arch>`), or `brew install mcp-publisher`.
2. In this folder: `mcp-publisher login github` and follow the device code prompt in your browser.
3. `mcp-publisher publish` (publishes `server.json`).
4. `cd rcs-tools` then `mcp-publisher publish` (publishes the free tools server).
5. Check: https://registry.modelcontextprotocol.io/v0/servers?search=Red-Center-Studio

## Glama (glama.ai/mcp/servers)

Glama indexes public GitHub repositories and also accepts remote servers. Sign in with GitHub, then use "Add server"
and give the repository URL https://github.com/Red-Center-Studio/webdesk-mcp. Paste the shared short description.
Claim the listing with the same GitHub account so the description can be edited.

## Smithery (smithery.ai)

Sign in, choose "Publish server", pick "Remote / URL", and enter https://redcenterstudio.com/api/webdesk/mcp. Add a
configuration field for the API key: name `Authorization`, secret, description "Bearer wd_... key from
redcenterstudio.com/webdesk/agents/". Paste the shared short description. Repeat for the free tools server with no
configuration field.

## mcp.so

Use "Submit" (top right) and paste: name, the repository URL, the server URL and the shared short description. The form
also takes a category; choose Developer Tools.

## PulseMCP (pulsemcp.com)

Use "Submit a server" (https://www.pulsemcp.com/submit) and give the repository URL. PulseMCP reviews submissions by
hand; mention in the notes that it is a hosted remote server with bearer-key auth and a free companion server.
