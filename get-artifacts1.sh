#!/bin/bash

tok=$(cat ~/token.gh)

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/TON-PSEUDO/tp-graphes/actions/artifacts" \
  > gh-artifacts.json
