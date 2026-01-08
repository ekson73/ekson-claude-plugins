# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.

## Repository Overview

**ekson-claude-plugins** is a personal Claude Code plugin marketplace owned by [Emilson Moraes](https://github.com/ekson73).

**Purpose**: Centralized distribution of Claude Code plugins developed for AI agent workflows and multi-agent coordination.

**Type**: Plugin Marketplace (not a plugin itself)

---

## Architecture

```
ekson-claude-plugins/                    # Marketplace root
├── .claude-plugin/
│   └── marketplace.json                 # Plugin registry (source of truth)
├── .gitignore                           # Git exclusions
├── CHANGELOG.md                         # Version history
├── CLAUDE.md                            # This file (AI guidance)
├── LICENSE                              # MIT License
└── README.md                            # Public documentation
```

### Key Distinction

| Concept | This Repo | Plugin Repo |
|---------|-----------|-------------|
| Purpose | **Marketplace** (index of plugins) | **Plugin** (actual functionality) |
| Key File | `marketplace.json` | `plugin.json` |
| Contains | Plugin references | Commands, agents, skills, hooks |
| Installation | `claude plugin marketplace add` | `claude plugin install` |

---

## Files Reference

| File | Purpose | Update Frequency |
|------|---------|------------------|
| `marketplace.json` | Plugin registry with versions | On plugin release |
| `CHANGELOG.md` | Version history | On every release |
| `README.md` | User-facing documentation | On feature changes |

---

## Registered Plugins

| Plugin | Source | Version | Status |
|--------|--------|---------|--------|
| [multi-agent-os](https://github.com/ekson73/multi-agent-os) | `ekson73/multi-agent-os` | 1.0.0 | Active |

---

## Workflows

### Adding a New Plugin

1. Ensure plugin repo has `.claude-plugin/plugin.json`
2. Add entry to `marketplace.json`:
   ```json
   {
     "name": "plugin-name",
     "description": "Short description",
     "version": "x.y.z",
     "author": { "name": "...", "email": "..." },
     "source": { "source": "github", "repo": "owner/repo" },
     "category": "category-slug",
     "repository": "https://github.com/owner/repo",
     "license": "MIT",
     "keywords": ["keyword1", "keyword2"]
   }
   ```
3. Update `README.md` plugin table
4. Add entry to `CHANGELOG.md`
5. Commit with message: `feat(marketplace): add {plugin-name} v{version}`

### Updating a Plugin Version

1. Update `version` in `marketplace.json`
2. Update version in `README.md` table
3. Add entry to `CHANGELOG.md`
4. Commit: `feat({plugin-name}): bump to v{version}`

### Removing a Plugin

1. Remove entry from `marketplace.json`
2. Update `README.md` table
3. Add `### Removed` section in `CHANGELOG.md`
4. Commit: `feat(marketplace): remove {plugin-name}`

---

## Quality Standards

### Plugin Requirements (for inclusion)

- [ ] Has `.claude-plugin/plugin.json` with valid schema
- [ ] Has `README.md` with installation instructions
- [ ] Has `LICENSE` file (MIT preferred)
- [ ] Public GitHub repository
- [ ] Semantic versioning (MAJOR.MINOR.PATCH)

### Marketplace Requirements

- [ ] All plugins in `marketplace.json` are accessible
- [ ] Versions match source repository tags
- [ ] Keywords are relevant and searchable
- [ ] Categories are consistent across plugins

---

## Conventions

### Versioning

- **Marketplace version**: Tracks structural changes to marketplace itself
- **Plugin versions**: Tracked independently per plugin in `marketplace.json`
- Follow [Semantic Versioning 2.0.0](https://semver.org/)

### Commit Messages

```
feat(marketplace): add {plugin-name} v{version}
feat({plugin-name}): bump to v{version}
fix(marketplace): correct {issue}
docs: update README with {change}
chore: {maintenance task}
```

### Branch Strategy

- `main`: Stable, published marketplace state
- `feat/*`: New plugins or features
- `fix/*`: Bug fixes
- `docs/*`: Documentation updates

---

## FAQs

### Q: How is this different from claude-plugins-official?

**A**: `claude-plugins-official` is Anthropic's curated directory. This is a personal marketplace for custom plugins, primarily focused on AI agent orchestration tools developed by Emilson Moraes / Vek.

### Q: Can others contribute plugins?

**A**: Currently personal use. For contributions, open an issue first to discuss inclusion criteria.

### Q: Why a separate marketplace instead of contributing to official?

**A**: Faster iteration on experimental features. Plugins may be proposed to official directory once stable.

---

## NOT-TODOs (Scope Exclusions)

- Do NOT store plugin source code here (only references)
- Do NOT duplicate plugin documentation (link to source)
- Do NOT include pre-release/unstable plugins without marking them

---

## Related Repositories

| Repository | Purpose |
|------------|---------|
| [multi-agent-os](https://github.com/ekson73/multi-agent-os) | Multi-Agent Coordination Framework plugin |
| [claude-plugins-official](https://github.com/anthropics/claude-plugins-official) | Anthropic's official plugin directory |

---

## Maintenance

### Health Checks (Monthly)

1. Verify all plugin URLs are accessible
2. Check if plugin versions are current
3. Review plugin.json schemas for breaking changes
4. Update keywords/categories if taxonomy changes

### Known Limitations

- No automated version sync with source repos
- Manual update required when plugins release new versions
- No automated validation of plugin.json schemas

---

*Last updated: 2026-01-08*
*Maintained by: Emilson Moraes*

---

*Assinatura: Claude-Analyst-c614-mkt | 2026-01-08T11:05:00-03:00*
