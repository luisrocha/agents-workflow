# Project history routing

History is immutable and sharded:

- `INDEX.md`: one row per milestone
- `cycles/PLAN-NNN/INDEX.md`: one row per completed task in that milestone
- `cycles/PLAN-NNN/TASK-NNN.md`: one compressed task-cycle record
- `decisions/INDEX.md`: one row per approved decision or plan amendment
- `decisions/DEC-NNN.md`: complete decision history
- `milestones/PLAN-NNN.md`: milestone closeout summary

Start at the smallest relevant index. Do not scan every history file.
