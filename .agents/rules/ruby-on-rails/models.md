---
paths:
  - "app/models/**/*.rb"
  - "spec/models/**/*.rb"
  - "spec/factories/**/*.rb"
---

# Model rules

- Keep persistence rules, associations, validations, scopes, and cohesive
  domain behavior close to the model.
- Back critical application validations with database constraints where the
  database can enforce them.
- Choose and document association deletion behavior when deleting either side
  could orphan, nullify, or cascade records.
- Use callbacks only for intrinsic, local state maintenance. Trigger contextual
  side effects such as external calls, mail, or workflow orchestration
  explicitly.
- Give persisted enums stable explicit values when reordering could corrupt
  their meaning.
- Give every model a FactoryBot factory, with traits for meaningful states.
- Keep simple reusable queries as scopes; use query objects for real query
  composition, authorization-context, or aggregation complexity.
