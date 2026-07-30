# Task cycle records

Create one immutable file per completed task under its milestone directory.
Never append multiple task cycles to one file.

## Task record template

```markdown
# TASK-NNN — Task title

- **Result:** approved
- **Plan:** PLAN-NNN revision N
- **Technology profile revision:** N
- **Baseline revision:** commit SHA or explicit initial-worktree marker
- **Gate:** targeted or full, rationale, result, and CI/build ID
- **Changes:** files and behavior changed
- **Validation:** developer and reviewer checks with results
- **Assumptions:** approved assumptions only
- **Decisions:** relevant DEC-NNN links
- **Reviewer conclusion:** resolved findings and residual risks
- **Manual review:** user approval and feedback
- **Plan changes:** approved amendment link or none
- **Next:** next task or milestone completion
```

After writing the file, add one row to the milestone cycle index, remove the
task from its active milestone plan, and reset `.agent-context/CURRENT.md`.
