---
id: ptt-wepk
status: closed
deps: []
links: []
created: 2026-08-30T00:25:05Z
type: epic
priority: 1
assignee: ProbabilityEngineer
tags: [tk, bundling, distribution]
---
# Bundle canonical wedow/ticket CLI with pi-tk-tickets

Ship the pinned upstream wedow/ticket Bash implementation as the extension’s fallback tk executable, preserving compatibility with the Homebrew CLI currently used by pi-tk-tickets users.

## Acceptance Criteria

pi install npm:pi-tk-tickets works without a separately installed tk on supported Bash platforms; bundled source is pinned and attributed; users can override it with TK_BIN; existing PATH tk remains available as fallback.
