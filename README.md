# Ekson Claude Plugins

Personal Claude Code plugin marketplace by [Emilson Moraes](https://github.com/ekson73).

## Installation

```bash
# Add marketplace
claude plugin marketplace add ekson73/ekson-claude-plugins

# List available plugins
claude plugin marketplace list

# Install a plugin
claude plugin install multi-agent-os
```

## Available Plugins

| Plugin | Description | Version |
|--------|-------------|---------|
| [multi-agent-os](https://github.com/ekson73/multi-agent-os) | Multi-Agent Coordination Framework - Orchestration, Sentinel Protocol, Worktree Policy, Status Maps | 1.0.0 |

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
- 8 Skills
- 5 Commands (`/sync`, `/audit`, `/status`, `/worktree`, `/delegate`)
- 4 Agents (orchestrator, sentinel-monitor, qa-validator, consolidator)
- 4 Hooks (SessionStart, PreToolUse, PostToolUse, Stop)

## Contributing

To suggest a plugin for this marketplace, open an issue or PR.

## License

MIT License

---

*Maintained by Emilson Moraes | Powered by Claude Code*
