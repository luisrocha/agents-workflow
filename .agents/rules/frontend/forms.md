---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/javascript/**/*"
---

# Form rules

- Give every control a visible label when practical, a meaningful `name`, and
  the correct `type`, `inputmode`, and `autocomplete` token.
- Keep labels and checkbox or radio controls in one usable hit target.
- Never block paste. Disable spellcheck only for values such as email
  addresses, usernames, and one-time codes where correction is harmful.
- Keep the submit control available until submission starts, prevent duplicate
  submissions while pending, and expose a clear progress state.
- Place errors next to their fields, connect them programmatically, summarize
  when useful, and move focus to the first error after a failed submission.
- Use placeholders only as supplementary examples, never as labels. Use the
  ellipsis character (`…`) for incomplete example prompts.
- Configure autocomplete deliberately, especially for identity, password,
  payment, and one-time-code fields; do not disable it globally.
- Warn before abandoning meaningful unsaved work, without trapping routine
  navigation.
- Preserve entered values and understandable errors when server validation
  fails.
