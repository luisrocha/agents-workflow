---
paths:
  - "app/mailers/**/*.rb"
  - "app/views/**/*_mailer/**/*"
  - "spec/mailers/**/*.rb"
---

# Action Mailer rules

- Prefer `deliver_later` from request paths. Use `deliver_now` only when the
  caller intentionally needs delivery before continuing.
- Provide text and HTML parts for user-facing mail unless the product
  requirement calls for one format.
- Keep mailers focused on message construction; keep domain workflows outside.
- Provide previews for messages whose presentation needs manual review.
- Test recipients, headers, rendered essentials, and enqueueing or delivery
  behavior as appropriate.
