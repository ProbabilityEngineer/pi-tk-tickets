# Agent Instructions

## Repository

- `pi-tk-tickets` is a TypeScript Pi extension providing a compact `tk` ticket workflow with low prompt overhead.
- Keep ticket actions explicit, preserve the `action`-oriented tool surface, and do not replace tk's authoritative task state with Markdown.
- The extension entry point is `index.ts`.

## Validation and release

- Run `npm run lint`, `npm run build`, `npm test`, and `npm run pack:check` when relevant.
- Publication is tag-triggered; do not publish without explicit approval.

## Version control

- Use normal Git workflows. Inspect `git status` and the diff before committing or pushing.
