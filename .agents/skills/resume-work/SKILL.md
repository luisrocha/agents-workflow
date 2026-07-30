---
name: resume-work
description: Resume the current document-driven orchestration workflow entirely from persisted .agent-context state. Use when the user invokes $resume-work or asks to continue the active plan or task without relying on earlier conversation context.
---

# Resume work

1. Start a fresh manager from `.agents/subagents/manager.md`.
2. Require `.agent-context/CURRENT.md` to exist, then reconstruct state only
   from the manager's bounded startup documents. If it is absent, stop and
   direct the user to `$start-work`; resumption never initializes context.
3. Ask a fresh planner to reconcile any identifier or revision mismatch using
   `manage-task-cycle`; never infer the intended state.
4. Continue from the recorded gate:
   - draft or invalidated plan: planning and user sign-off;
   - `development`: developer;
   - `review`: reviewer;
   - `manual_review`: user review;
   - `approved`: planner closeout;
   - `idle`: planner selects and initializes the next ready task.
5. Preserve every approval and review gate.

Do not use previous chat context to fill missing state.
