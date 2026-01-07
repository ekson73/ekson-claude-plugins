#!/bin/bash
cd /Users/emilson.moraes/Projects/ekson-claude-plugins
git add -A
git commit -m "fix: rename to ekson-claude-plugins (reserved name)

'claude-code-marketplace' is reserved for Anthropic official.
Renamed to 'ekson-claude-plugins'.

Installation:
  claude plugin marketplace add ekson73/ekson-claude-plugins
  claude plugin install multi-agent-os

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>"
git push origin main
