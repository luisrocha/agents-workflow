# JavaScript tooling rules

- Use ESLint as the default JavaScript static-analysis tool.
- Treat the checked-in ESLint configuration as the formatting and correctness
  authority; do not duplicate mechanically enforceable style rules in prose.
- Do not disable an ESLint rule globally to fix one violation. Use the narrowest
  suppression with a reason when an exception is genuinely required.
- Run ESLint on changed JavaScript while iterating. Follow `validation.md` for
  affected-area and full JavaScript validation.
- Apply automatic fixes only to files in task scope and inspect the resulting
  diff.
- Do not add Prettier, a shareable ESLint configuration, TypeScript, or a
  package manager without an approved technology decision.
