# Ekson Claude Plugins

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Plugin%20Marketplace-blueviolet)](https://claude.ai/code)
[![Plugins](https://img.shields.io/badge/Plugins-1-green)](https://github.com/ekson73/ekson-claude-plugins)

Personal Claude Code plugin marketplace by [Emilson Moraes](https://github.com/ekson73).

## Quick Start

```bash
# Add marketplace
claude plugin marketplace add ekson73/ekson-claude-plugins

# List available plugins
claude plugin marketplace list

# Install a plugin
claude plugin install multi-agent-os
```

## Available Plugins

| Plugin | Description | Version | Category |
|--------|-------------|---------|----------|
| [multi-agent-os](https://github.com/ekson73/multi-agent-os) | Multi-Agent Coordination Framework | 1.0.0 | AI Agents |

## Plugin Details

### multi-agent-os

A comprehensive Claude Code plugin for orchestrating AI agents in software development workflows.

**Features:**
- Sentinel Protocol (anomaly detection, loop prevention)
- Status Map System (human-centric observability)
- Anti-Conflict Protocol (git worktree coordination)
- Hierarchical Merge Protocol (branch convergence)
- TTL Policy (content freshness management)

**Components:**

| Type | Count | Examples |
|------|-------|----------|
| Skills | 8 | context-prep, agent-select, loop-check |
| Commands | 5 | `/sync`, `/audit`, `/status`, `/worktree`, `/delegate` |
| Agents | 4 | orchestrator, sentinel-monitor, qa-validator, consolidator |
| Hooks | 4 | SessionStart, PreToolUse, PostToolUse, Stop |

**Installation:**
```bash
claude plugin install multi-agent-os
```

## Contributing

To suggest a plugin for this marketplace:

1. Ensure your plugin has `.claude-plugin/plugin.json`
2. Open an [issue](https://github.com/ekson73/ekson-claude-plugins/issues) with plugin details
3. Or submit a PR adding your plugin to `marketplace.json`

### Plugin Requirements

- Public GitHub repository
- Valid `plugin.json` with required fields
- MIT or compatible license
- Documentation (README.md)

## Related Resources

- [Claude Code Plugin Documentation](https://code.claude.com/docs/en/plugin-marketplaces)
- [Official Claude Plugins](https://github.com/anthropics/claude-plugins-official)

## License

[MIT License](LICENSE)

---

*Maintained by [Emilson Moraes](https://github.com/ekson73) | Powered by Claude Code*
