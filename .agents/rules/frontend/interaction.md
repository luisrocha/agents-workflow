---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/javascript/**/*"
  - "app/assets/stylesheets/**/*"
---

# Interaction and motion rules

- Honor `prefers-reduced-motion` with a reduced or disabled alternative.
- Prefer animating `transform` and `opacity`. Never use `transition: all`; list
  intended properties and keep interactions interruptible.
- Set a deliberate transform origin. Apply SVG transforms to a suitable group
  and define its transform box and origin when browser behavior requires it.
- Provide visible hover, active, and focus feedback without relying on hover
  alone.
- Make touch targets usable and set tap highlight, `touch-action`, and
  overscroll behavior deliberately rather than globally.
- Keep modal and drawer scrolling contained, trap focus only while modal, and
  restore focus to the initiating control when closed.
- During drag operations, prevent accidental selection and keep non-interactive
  dragged content out of the focus and accessibility order as appropriate.
- Use autofocus sparingly, avoid it on mobile, and reserve it for an
  unambiguous primary task.
- Require confirmation for costly or irreversible actions, or provide a
  reliable undo window when the action is safely reversible.
