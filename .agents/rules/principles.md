# Development principles

- Prefer conventional Rails and the smallest complete change.
- Implement current requirements only. Do not add speculative configuration,
  extension points, dependencies, or abstractions.
- Keep each unit cohesive and give it a clear reason to change. Place behavior
  with the data or workflow it represents; do not pursue "skinny" files as an
  end in itself.
- Duplicate a small amount of code until a stable shared concept is evident.
- Prefer explicit control flow and named methods over callbacks,
  metaprogramming, and hidden side effects.
- Use composition over deep inheritance.
- Extract services, queries, components, concerns, or presenters only when they
  make an observed responsibility or reuse boundary clearer.
- Do not use line counts, implementation counts, or table sparsity percentages
  as automatic architecture triggers.
- Preserve public behavior unless the approved task changes it.
- Comments explain non-obvious intent or constraints, not what readable code
  already says.
- Follow secure defaults, data integrity, accessibility, and operability even
  when they require more than the shortest implementation.
