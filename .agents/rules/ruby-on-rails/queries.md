---
paths:
  - "app/queries/**/*.rb"
  - "spec/queries/**/*.rb"
  - "app/models/**/*.rb"
---

# Query rules

- Keep simple reusable queries as model scopes.
- Give each query object one query concern and explicit context such as account
  or user when authorization or tenancy requires it.
- Keep query objects read-only.
- Return `ActiveRecord::Relation` when callers need composition and a value
  object or simple value for computed results.
- Parameterize SQL and use `sanitize_sql_like` for wildcard input.
- Prevent known N+1 access patterns with the appropriate preload strategy.
  Do not eager-load every association by default; verify the actual access path.
- Test filtering, empty results, composition, and tenant isolation.
