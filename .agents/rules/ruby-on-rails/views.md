---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/presenters/**/*"
  - "app/javascript/**/*"
  - "app/assets/stylesheets/**/*"
  - "spec/components/**/*"
---

# View and frontend rules

- Apply the framework-neutral `frontend/` rules and `javascript/stimulus.md`.
- Use Hotwire for HTML-over-the-wire interactions, ViewComponent for reusable
  UI contracts, and Tailwind CSS for styling.
- Prefer partials for small local reuse. Extract a ViewComponent when an
  element owns a meaningful reusable contract or behavior.
- Keep domain decisions out of templates. Small presentation conditions and
  formatting helpers are acceptable when clear.
- Use Turbo Drive as the default navigation path. Opt out only around a
  documented incompatibility.
- Use Turbo Frames only for bounded navigation or replacement contexts. Give
  every frame a stable unique ID and return a matching frame in its response.
- Do not add a Turbo Frame only to receive a Turbo Stream; streams can target
  ordinary elements with stable DOM IDs.
- Start with a working full-page or frame response, then add Turbo Streams for
  coordinated or live updates. Keep real-time flows usable after a disconnect.
- Keep Turbo Streams declarative. Put additional browser behavior in Stimulus
  instead of custom stream actions unless a reviewed need justifies one.
- Preserve meaningful navigation state in the URL and use
  `data-turbo-action="advance"` when frame navigation should update history.
- Use `data-turbo-permanent` only for state that must survive navigation and
  give the element a unique ID. Mark transient UI so it is not restored from a
  Turbo cache preview.
- Use morphing only with stable DOM identity and verify focus, form state,
  third-party widgets, and permanent elements.
- Test successful and invalid form responses, missing-frame behavior, history,
  cache restoration, and critical Turbo interactions with system specs.
