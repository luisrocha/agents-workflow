---
paths:
  - "app/policies/**/*.rb"
  - "spec/policies/**/*.rb"
  - "app/controllers/**/*.rb"
---

# Pundit policy rules

- Define one Pundit policy per authorized resource and inherit from
  `ApplicationPolicy`.
- Default to no access when no rule grants it.
- Define policy scopes for collections and enforce tenant isolation.
- Call `authorize` for member actions and `policy_scope` for collections.
- Test each meaningful action and role, including denied access.
- Choose `403`, `404`, or another response deliberately according to the
  application's information-disclosure policy; do not hard-code one globally.
