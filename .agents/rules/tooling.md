# Tooling rules

- Discover commands from the repository before running them. Prefer the same
  commands used by continuous integration.
- Prefer `rg` for text search and `rg --files` for file discovery.
- Inspect changes with `git diff` and repository status without assuming a
  particular pager or output formatter.
- Use focused test and lint commands while iterating, then run the complete
  required validation recorded in the plan.
- Run configured static analysis, dependency auditing, secret scanning, and
  other security tools; do not install tools silently.
- Use safe automatic corrections only for files in task scope. Review their
  diffs before handoff.
- Do not update dependencies, delete process files, kill processes, reset data,
  or perform destructive operations unless the approved task requires it and
  the user has authorized the risk.
- Report every validation command, exit result, skipped check, and relevant
  warning to the reviewer.
