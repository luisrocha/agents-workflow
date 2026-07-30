---
paths:
  - "app/javascript/controllers/**/*_controller.js"
  - "app/views/**/*"
  - "app/components/**/*"
---

# Stimulus rules

- Use Stimulus to enhance server-rendered HTML, not to recreate a client-side
  rendering framework.
- Keep the baseline interaction functional with HTML and CSS when practical;
  reveal enhancements only after feature detection when support is optional.
- Define one controller module per file named `[identifier]_controller.js`.
  Use kebab-case identifiers and camelCase methods and properties.
- Keep controllers small and behavior-focused. Compose multiple controllers on
  an element rather than building one controller for an entire page.
- Use targets instead of repeated selectors, typed values instead of ad hoc
  dataset parsing, CSS classes instead of hard-coded styling names, and action
  parameters for per-element input.
- Use declarative `data-action` descriptors, including keyboard filters and
  `@window` or `@document` targets, instead of registering equivalent listeners
  manually.
- Use `initialize` for one-time setup, `connect` for work needed on every DOM
  connection, and `disconnect` to release timers, observers, subscriptions,
  requests, and manually registered listeners.
- Keep durable controller state in Stimulus values or other DOM attributes so
  it reconnects correctly after Turbo updates.
- Coordinate independent controllers with dispatched DOM events. Use outlets
  only when one controller genuinely requires another controller instance.
- Guard optional targets and values with their generated `has*` properties.
- Test controller behavior across connect, disconnect, and reconnect when Turbo
  replacement or caching can expose lifecycle bugs.
