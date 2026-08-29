---
id: pt-co1m
status: closed
deps: []
links: []
created: 2026-08-29T19:55:26Z
type: feature
priority: 1
assignee: ProbabilityEngineer
---
# Rename pi-tickets to pi-tk-tickets and deprecate legacy package

Publish the extension under the unambiguous pi-tk-tickets name, update package/repository documentation, and release a final pi-tickets migration notice before npm deprecation.

## Acceptance Criteria

New package is published; repository/package metadata and docs use pi-tk-tickets; legacy pi-tickets final release reports migration; all pi-tickets releases are deprecated only after the replacement is available.


## Notes

**2026-08-29T20:00:55Z**

Renamed GitHub repository to ProbabilityEngineer/pi-tk-tickets and pushed package/docs/workflow migration. Publication is blocked pending bootstrap npm credentials: gh secret list contains no NPM_TOKEN, and local npm whoami returns E401. Publish pi-tk-tickets first, then publish legacy pi-tickets@0.1.5 and deprecate old releases.
