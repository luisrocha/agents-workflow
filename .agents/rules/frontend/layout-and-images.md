---
paths:
  - "app/views/**/*"
  - "app/components/**/*"
  - "app/assets/stylesheets/**/*"
---

# Layout, images, and theming rules

- Prefer CSS grid and flexbox over JavaScript layout measurement.
- Prevent overflow at its source. Do not hide horizontal overflow globally to
  conceal broken layout.
- Account for safe-area insets in full-bleed controls and fixed navigation.
- Give images intrinsic dimensions or an aspect ratio to prevent layout shift.
- Lazy-load below-the-fold images. Prioritize an above-the-fold image only when
  it is genuinely critical to the largest-contentful render.
- Set meaningful responsive image sizes and avoid downloading assets larger
  than their rendered use requires.
- For dark themes, set `color-scheme`, a matching theme color, and explicit
  foreground/background colors for native controls that render inconsistently.
- Test responsive layout with content expansion, browser zoom, narrow
  viewports, and both supported color schemes.
