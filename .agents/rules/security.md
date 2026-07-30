# Security rules

- Never read, print, copy, commit, or hard-code secrets. Use the approved
  secret store or environment variables and keep only placeholder examples in
  version control.
- Treat request data, headers, uploaded files, webhook payloads, external API
  responses, and persisted user content as untrusted at their boundaries.
- Use permitted input lists, parameterized queries, context-appropriate output
  escaping, and anti-forgery protections.
- Authenticate sensitive actions and authorize both individual records and
  collections. Default to least privilege and test denied access.
- Preserve tenant boundaries in reads, writes, jobs, exports, searches, and
  background processing.
- Validate redirect targets, outbound URLs, file names, file types, and file
  sizes where user input could cause open redirects, SSRF, path traversal, or
  unsafe uploads.
- Use established platform protections for passwords, sessions, cookies,
  encryption, and signed data; do not invent cryptography.
- Avoid logging secrets, credentials, full session data, or unnecessary
  personal information.
- Run the project's configured static security and dependency vulnerability
  checks. Triage findings as evidence: tools can produce false positives and
  false negatives.
- Stop and ask for review when a change affects authentication, authorization,
  cryptography, payments, destructive operations, or sensitive data handling.
