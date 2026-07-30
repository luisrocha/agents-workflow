---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/mailers/**/*"
  - "config/locales/**/*"
---

# Content, typography, and localization rules

- Use active, direct language, specific control labels, and error messages that
  explain the next useful action.
- Follow one approved capitalization and voice convention consistently; do not
  impose title case where product language calls for sentence case.
- Use the ellipsis character (`…`) for loading and incomplete text. Use
  non-breaking spaces where splitting a number and unit, shortcut, or protected
  name would harm comprehension.
- Use tabular numerals for comparable numeric columns. Apply balanced or pretty
  wrapping as progressive enhancement where it improves headings or prose.
- Design containers for empty, short, average, and very long content. Allow
  flex children to shrink and use wrapping, truncation, or line clamping only
  when loss of content is acceptable.
- Format dates, times, numbers, and currency with locale-aware platform or
  server APIs rather than hard-coded presentation formats.
- Derive locale from explicit user preference and standard language
  negotiation, not IP address.
- Mark brand names, code tokens, and identifiers as non-translatable where
  automatic translation would corrupt them.
