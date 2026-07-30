---
paths:
  - "db/migrate/**/*.rb"
  - "db/schema.rb"
  - "db/structure.sql"
  - "app/models/**/*.rb"
---

# Migration and data rules

- Treat a migration already applied in any shared environment as immutable;
  correct it with a new migration.
- Prefer reversible migrations when rollback is safe. Do not disguise
  destructive or lossy changes as reversible.
- Enforce required values, uniqueness, referential integrity, and other
  critical invariants with suitable database constraints as well as useful
  model validation.
- Add indexes for proven access paths and foreign keys. Use unique indexes when
  uniqueness must survive concurrent writes.
- Use foreign keys unless an approved architecture decision prevents them.
- For deployed tables, separate incompatible schema changes, backfills, and
  constraint enforcement into safe rollout steps. Make backfills restartable,
  bounded, and observable.
- Assess table size, locks, write traffic, database engine, and deployment
  compatibility before adding indexes, defaults, `NOT NULL`, or type changes.
- Keep data migrations out of schema migrations when they need application
  code, batching, retries, or independent deployment.
- Use the schema format approved in the technology profile. Prefer
  `structure.sql` when database features cannot be represented faithfully in
  `schema.rb`.
- Review generated schema changes; do not hand-edit the schema dump.
- Never run destructive database commands without explicit user confirmation.
