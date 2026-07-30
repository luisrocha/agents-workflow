---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/javascript/**/*"
  - "app/assets/stylesheets/**/*"
---

# Accessibility rules

- Target WCAG 2.2 AA for user-facing flows.
- Use semantic HTML and native controls before ARIA: buttons for actions, links
  for navigation, labels for controls, and tables for tabular data.
- Give icon-only controls and other interactive elements an accessible name.
  Hide purely decorative icons from assistive technology.
- Give informative images meaningful alternative text and decorative images an
  empty `alt`.
- Preserve native keyboard behavior. Custom widgets must implement the complete
  expected keyboard interaction, focus management, name, role, and state.
- Keep heading levels meaningful, provide a skip link to main content, and use
  `scroll-margin-top` where anchored headings could be obscured.
- Keep focus visible. Prefer `:focus-visible`; never remove an outline without
  an equally visible replacement. Use `:focus-within` for compound controls.
- Announce important asynchronous status and validation changes with an
  appropriate live region without duplicating visible content.
- Preserve browser zoom. Never set `user-scalable=no` or `maximum-scale=1`.
- Verify keyboard order, focus restoration, zoom/reflow, labels, errors, and
  dynamic announcements manually for changed critical flows.
