# Rails security rules

- Store secrets in Rails credentials or environment variables. Never read,
  print, commit, or hard-code them.
- Use `params.expect` when supported by the approved Rails version; otherwise
  use explicit `require` and `permit` lists. Avoid unrestricted hashes.
- Preserve Rails CSRF protection for browser requests.
- Use Active Record query APIs or parameterized SQL. Escape wildcard input with
  `sanitize_sql_like`.
- Rely on Rails output escaping and sanitize intentionally allowed markup; do
  not mark untrusted content as HTML-safe.
- Use Rails password, session, encrypted-cookie, signed-data, and encryption
  facilities rather than custom cryptography.
- Enforce Pundit authorization for records and policy scopes for collections.
- Run Brakeman for relevant Rails security changes and required full gates.
  Run the configured dependency audit for dependency, milestone, release, and
  other full gates defined by `validation.md`.
