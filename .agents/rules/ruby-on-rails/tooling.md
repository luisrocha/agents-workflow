# Rails tooling rules

- Prefer checked-in `bin/rails`, `bin/rake`, `bin/brakeman`, and other binstubs.
  Use `bundle exec` when no project binstub exists.
- Discover the canonical RSpec, RuboCop, Brakeman, dependency-audit, and system
  spec commands from the repository or continuous integration configuration.
- Run focused RSpec examples while iterating and follow `validation.md` for
  affected-area and full-suite gates.
- Apply only safe RuboCop corrections to files in task scope and inspect their
  diff.
- Run Brakeman and dependency auditing when configured; do not install or
  update gems silently.
- Do not run `db:drop`, `db:reset`, destructive migrations, or production
  database commands without explicit user confirmation.
- Report commands, exit results, skipped checks, and relevant warnings.
