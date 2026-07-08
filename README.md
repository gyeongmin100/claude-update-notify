# claude-update-notify

Claude Code plugin. Checks `npm show @anthropic-ai/claude-code version` against your installed `claude --version` on every session start, and shows a one-line reminder if a newer release exists.

Requires Windows + PowerShell. Works whether Claude Code was installed via npm or the native (`irm`) installer — both ship on the same version numbers.

## Install

```
/plugin marketplace add gyeongmin100/claude-update-notify
/plugin install claude-update-notify
```

## Uninstall

```
/plugin uninstall claude-update-notify
```

## Requirements

- `npm` on PATH (used only to query the latest published version — no packages are installed)
- PowerShell
