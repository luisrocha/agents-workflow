---
name: approve-plan
description: Explicitly approve one exact active milestone plan revision and allow it to pass from the planner to development. Use when the user invokes $approve-plan with a PLAN-NNN identifier and revision after reviewing the proposed plan.
---

# Approve plan

1. Require an exact `PLAN-NNN` identifier and revision.
2. Start a fresh manager and compare both values with `ACTIVE.md` and its
   referenced plan.
3. Refuse stale, missing, invalidated, or unresolved plans and report the
   mismatch.
4. Treat the invocation as sign-off only when the supplied plan and revision
   match and no technical clarification remains unanswered.
5. Ask a fresh planner to record approval, mark eligible tasks `ready`, and use
   `manage-task-cycle` to initialize the next task.
6. Continue through the manager to development.

Approve no amendment, technology change, later revision, or different plan
implicitly.
