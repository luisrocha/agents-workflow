---
paths:
  - "app/javascript/**/*.js"
  - "app/javascript/**/*.mjs"
---

# JavaScript rules

- Use JavaScript modules and the project's existing import strategy.
- Prefer `const`; use `let` only for rebinding. Do not use `var`.
- Prefer native browser APIs over a dependency for small behavior.
- Keep DOM behavior attached through Stimulus actions rather than inline script
  attributes or global event setup.
- Use semantic elements so native behavior handles keyboard and activation
  before adding JavaScript handlers.
- Handle rejected promises and non-successful fetch responses deliberately.
  Cancel obsolete requests when a controller disconnects or a newer request
  supersedes them.
- Do not interpolate untrusted content into HTML. Prefer DOM APIs that treat
  content as text or render trusted server-generated HTML through Turbo.
- Keep state in the URL or DOM when it must survive Turbo navigation, refresh,
  sharing, or restoration.
- Feature-detect optional browser APIs and keep the baseline interaction usable
  without them.
- Avoid global mutable state and global event listeners. When unavoidable,
  scope ownership and clean up listeners explicitly.
