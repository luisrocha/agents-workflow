---
paths:
  - "spec/**/*.rb"
---

# Rails testing rules

- Use RSpec, FactoryBot, and Shoulda Matchers.
- Add the smallest spec that proves changed behavior and fails for the relevant
  regression. Test before or alongside implementation; reproduce bugs first
  when practical.
- Test observable behavior and contracts rather than private implementation.
- Cover happy paths, important failures, boundaries, and security-relevant
  denial paths in proportion to risk.
- Use request specs for HTTP behavior and system specs for critical browser
  journeys. Do not duplicate every assertion at every layer.
- Keep specs deterministic, isolated, readable, and independent of execution
  order. Freeze or inject time and external services when relevant.
- Prefer `build` when persistence is unnecessary and `create` when database
  behavior matters. Use FactoryBot traits for meaningful states.
- Use Shoulda Matchers for straightforward validation and association
  declarations; use behavioral examples for custom logic and database effects.
- Verify tenant isolation and authorization wherever data visibility changes.
- Follow `.agents/rules/validation.md`: focused specs during development,
  affected-area validation during review, and a full suite only at a required
  full cycle, milestone, or release gate.
- Run system specs separately when the default test command excludes them.
- Never claim a check passed if it was skipped, unavailable, flaky, or failed.
- Do not apply unsafe RuboCop fixes outside task scope.
