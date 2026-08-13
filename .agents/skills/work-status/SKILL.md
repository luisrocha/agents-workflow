---
name: work-status
description: Report the current orchestration milestone, task, revisions, gates, blockers, and next action from persisted .agent-context documents. Use when the user invokes $work-status or asks for workflow status without changing project or orchestration state.
---

# Work status

Follow `.agents/COMMUNICATION.md`; return one concise requested status report.

If `.agent-context/CURRENT.md` does not exist, report that project context has
not been initialized and direct the user to `$start-work`. Do not initialize it.

Read only:

- `.agent-context/planning/ROADMAP.md`;
- `.agent-context/planning/ACTIVE.md` and its referenced plan;
- `.agent-context/planning/TECHNOLOGY.md`;
- `.agent-context/CURRENT.md`;
- `.agent-context/history/INDEX.md`;
- exact history records referenced by `CURRENT.md`.

Report the active milestone, plan and technology revisions, current task and
stage, completed and pending gates, blockers, next actor, and next user action.
Call out mismatched state explicitly.

Do not inspect project code, run project commands, edit files, start another
role, or advance the workflow.
