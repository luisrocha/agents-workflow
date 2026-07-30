---
paths:
  - "app/controllers/**/*.rb"
  - "config/routes.rb"
  - "spec/requests/**/*.rb"
---

# Controller rules

- Prefer RESTful actions and conventional routing.
- Treat parameters as untrusted. Use `params.expect` when supported by the
  approved Rails version; otherwise use explicit `require` and `permit` lists.
  Never permit an unrestricted hash without a documented reason.
- Authenticate requests and use Pundit consistently. Call `authorize` for
  member actions and `policy_scope` for collections.
- Scope collections to the current actor or tenant before filtering or
  pagination.
- Keep HTTP concerns in controllers. Extract a service only when simple CRUD no
  longer expresses the workflow clearly.
- Support only response formats required by the task.
- Validate request behavior, authentication, authorization, allowed
  parameters, and failure responses with request specs.
