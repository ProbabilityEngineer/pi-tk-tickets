---
id: ptt-6aln
status: open
deps: []
links: []
created: 2026-08-30T00:25:05Z
type: feature
priority: 1
assignee: ProbabilityEngineer
tags: [tk, bundling, tests]
---
# Add bundled wedow/ticket resolver and compatibility tests

Vendor a pinned wedow/ticket script, resolve TK_BIN then bundled tk then PATH, and test ticket actions against the bundled implementation.

## Acceptance Criteria

Resolver has deterministic precedence; vendored script is executable and covered by license attribution; automated tests cover create/list/start/note/close using the bundled tk.
