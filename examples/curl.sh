#!/bin/sh
# WebDesk MCP over plain HTTP (Streamable HTTP, stateless). Set WEBDESK_KEY to your wd_ key first:
#   export WEBDESK_KEY=wd_YOUR_API_KEY
URL=https://redcenterstudio.com/api/webdesk/mcp

# List the tools.
curl -s "$URL" \
  -H "Authorization: Bearer $WEBDESK_KEY" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}'

# Create a website (spends one credit).
curl -s "$URL" \
  -H "Authorization: Bearer $WEBDESK_KEY" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"create_website","arguments":{"businessName":"Harbour Plumbing","businessType":"trades_and_home_services","services":"Blocked drains, hot water systems, leak repairs","location":"Cairns, Queensland","tone":"friendly","palette":"harbour"}}}'

# Free tools server: no key needed.
curl -s https://redcenterstudio.com/api/tools/mcp \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","id":3,"method":"tools/call","params":{"name":"spof_scan","arguments":{"domain":"example.com"}}}'
