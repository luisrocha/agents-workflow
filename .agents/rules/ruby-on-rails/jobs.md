---
paths:
  - "app/jobs/**/*.rb"
  - "spec/jobs/**/*.rb"
---

# Active Job rules

- Use Active Job with Solid Queue.
- Design for at-least-once execution: make effects idempotent or guard them
  with a durable idempotency strategy.
- Pass small, serializable, stable arguments. IDs and GlobalID records are both
  valid when their missing-record behavior is deliberate.
- Retry only transient failures, with specific exceptions, bounded attempts,
  and suitable backoff. Discard only failures that are safe and observable.
- Handle deserialization and deleted-record cases explicitly where expected.
- Keep jobs focused and move reusable domain work out of the job wrapper.
- Do not rely accidentally on a job sharing the web process's transaction or
  database.
- Test enqueueing plus important execution, retry, idempotency, and failure
  behavior.
