---
name: resume-work
description: Resume the current document-driven orchestration workflow entirely from persisted .agent-context state. Use when the user invokes $resume-work or asks to continue the active plan or task without relying on earlier conversation context.
---

# Resume work

Follow `.agents/COMMUNICATION.md` throughout this workflow.

1. If `CURRENT.md` describes an active cycle, reconnect to that cycle's
   existing manager and role contexts; do not spawn replacements. If the
   packet is `idle`, start a manager for the next cycle.
2. Require `.agent-context/CURRENT.md` to exist. Have the manager read only
   `ACTIVE.md` and `CURRENT.md` for routing, with the conditional reads defined
   in its role file. Have the planner perform any deeper state reconstruction.
   If `CURRENT.md` is absent, stop and direct the user to `$start-work`;
   resumption never initializes context.
3. Ask the active cycle's planner to reconcile any identifier or revision
   mismatch using `manage-task-cycle`; never infer the intended state.
4. Continue from the recorded gate:
   - draft or invalidated plan: planning and user sign-off;
   - `development`: developer;
   - `review`: reviewer;
   - `manual_review`: user review;
   - `approved`: planner closeout;
   - `idle`: planner selects and initializes the next ready task.
5. Preserve every approval and review gate.

Do not use previous chat context to fill missing state.
If an active cycle's agent contexts are unavailable, stop and ask the user
before creating any replacement.
