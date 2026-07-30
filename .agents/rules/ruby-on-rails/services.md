---
paths:
  - "app/services/**/*.rb"
  - "spec/services/**/*.rb"
---

# Service rules

- Do not create a service for trivial CRUD.
- When a service is warranted, inherit from `ApplicationService`, expose one
  public `#call`, and provide `.call(...)` as a shortcut to `new(...).call`.
- Return the project Result object with `success?` and `failure?` predicates.
  Use successful results for completed work and failed results for expected
  business or validation failures.
- Inject external collaborators through the constructor when doing so makes
  boundaries and tests clearer.
- Make inputs, outputs, expected failures, and side effects explicit.
- Use exceptions for exceptional failures rather than expected business
  outcomes.
- Keep database transactions narrow and do not perform slow external calls
  while holding them open.
- Namespace services by domain and test success, failure, and side effects.
