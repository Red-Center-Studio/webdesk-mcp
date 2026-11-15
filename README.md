# WebDesk MCP server

Let an AI agent build complete one-page websites for small businesses. Your agent sends a short brief, WebDesk writes
and builds the site, and your agent gets back a ZIP of plain HTML, CSS and JavaScript that the business owns.

This repository is the public listing and client examples for the hosted server. It is not the server's source code.

- **Server:** `https://redcenterstudio.com/api/webdesk/mcp` (Streamable HTTP, bearer API key)
- **Docs:** [redcenterstudio.com/webdesk/agents/docs/](https://redcenterstudio.com/webdesk/agents/docs/)
- **API keys and pricing:** [redcenterstudio.com/webdesk/agents/](https://redcenterstudio.com/webdesk/agents/)

## Tools

| Tool | What it does |
| --- | --- |
| `create_website` | Send a business brief. Spends one credit and starts building. Returns a job id. |
| `get_website_status` | Check progress and get a short-lived preview link. |
| `get_download_link` | Get a 15-minute link to the finished ZIP. |
| `revise_website` | Use the one free redo with change notes. |
| `get_credit_balance` | See the credits left and the packs on offer. |
| `buy_credits` | Get a Stripe Checkout link to top up the key. |

Inputs, outputs, statuses and error codes are in the [docs](https://redcenterstudio.com/webdesk/agents/docs/#tools).

## Pricing

One credit creates one website with one free redo. Credits are prepaid through Stripe:

| Pack | Price (USD) | Per website |
| --- | --- | --- |
| 1 credit | $29 | $29 |
| 5 credits | $135 | $27 |
| 10 credits | $250 | $25 |
| 25 credits | $575 | $23 |

Prices on [the WebDesk for AI agents page](https://redcenterstudio.com/webdesk/agents/) are the current ones if they
ever differ from this table. Finished files can be downloaded for 30 days after delivery.

## Connect

Create a free API key on the [agents page](https://redcenterstudio.com/webdesk/agents/#key), then pick your client.
The key starts with `wd_` and is shown once: keep it in a secret store.

**Claude Code**

```
claude mcp add --transport http webdesk https://redcenterstudio.com/api/webdesk/mcp --header "Authorization: Bearer wd_YOUR_API_KEY"
```

**Cursor:** copy [`examples/cursor.json`](examples/cursor.json) into `~/.cursor/mcp.json`.

**Claude Desktop:** copy [`examples/claude-desktop.json`](examples/claude-desktop.json) into `claude_desktop_config.json`.
It uses the `mcp-remote` bridge to send the bearer key, so Node.js must be installed.

**Any Streamable HTTP client:** see [`examples/curl.sh`](examples/curl.sh).

## Free tools server (no key)

Red Center Studio also runs a free MCP server with five checks, no API key needed:

- `geo_audit`: how ready a website is for AI assistants and search engines, with copy-paste fixes.
- `ai_crawler_check`: whether the AI search crawlers from OpenAI, Anthropic, Perplexity and Google can reach a site.
- `domain_health`: domain and certificate expiry, DNS basics, SPF, DMARC and DKIM, with plain fixes.
- `spof_scan`: which companies a business depends on for email, sign-in, DNS and hosting, from public DNS.
- `decode_error`: Bubble error messages explained, with the likely cause and the fix guide.

```
claude mcp add --transport http rcs-tools https://redcenterstudio.com/api/tools/mcp
```

Details: [docs, free tools](https://redcenterstudio.com/webdesk/agents/docs/#free-tools). Registry metadata is in
[`rcs-tools/server.json`](rcs-tools/server.json).

## Registry metadata

[`server.json`](server.json) describes the WebDesk server for the official
[MCP Registry](https://registry.modelcontextprotocol.io). [`rcs-tools/server.json`](rcs-tools/server.json) describes the
free tools server.

## Support

Email Hello@redcenterstudio.com with the job id. Websites are written by AI from the brief, so check every word before
publishing. Terms: [redcenterstudio.com/terms/#webdesk](https://redcenterstudio.com/terms/#webdesk).

## Licence

The examples and metadata in this repository are MIT licensed. See [LICENSE](LICENSE).

Built by Red Center Studio, [redcenterstudio.com](https://redcenterstudio.com).
