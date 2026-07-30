---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/javascript/**/*"
  - "app/assets/**/*"
---

# Frontend performance rules

- Paginate or incrementally load large server-backed collections. Use browser
  virtualization only when product behavior requires a large client-side list
  and measurement shows it helps.
- Avoid forced synchronous layout. Batch DOM reads before writes and do not
  repeatedly mix geometry reads with style mutations.
- Prefer CSS layout and animation over JavaScript measurement and animation
  loops.
- Preconnect or preload only measured critical origins, fonts, and assets;
  speculative resource hints can compete with more important work.
- Use `font-display: swap` or another explicitly approved loading strategy for
  web fonts.
- Avoid unnecessary client dependencies and ship only JavaScript required by
  the interaction.
- Validate meaningful changes with browser performance evidence rather than
  fixed element-count or bundle-size folklore.
