#!/usr/bin/env bash
# Call publicrecords/sports-odds-api on YOUR Apify account. Set APIFY_TOKEN. Do not commit the token.
set -euo pipefail
: "${APIFY_TOKEN:?Set APIFY_TOKEN to your own Apify token}"
curl -sS -X POST \
  "https://api.apify.com/v2/acts/publicrecords~sports-odds-api/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"leagues": ["basketball/nba", "american_football/nfl"], "maxEvents": 10}'
