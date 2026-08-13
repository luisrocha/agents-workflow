---
name: approve-plan
description: Explicitly approve the active milestone plan revision and allow it to pass from the planner to development. Use when the user invokes $approve-plan, optionally with a PLAN-NNN identifier or revision, after reviewing the proposed plan; omitted values resolve from persisted active state.
---

# Approve plan

Follow `.agents/COMMUNICATION.md` throughout this workflow.

1. Read `ACTIVE.md` and its referenced plan. Resolve an omitted plan identifier
   to the plan in `ACTIVE.md` and an omitted revision to that plan's current
   revision. Never resolve either value from chat or archived history.
2. Reuse the manager and planner that prepared the plan when available; only
   create them when no task cycle is active and no planning roster exists.
   Compare any supplied values and both resolved values with `ACTIVE.md` and its
   referenced plan.
3. Refuse stale, missing, invalidated, or unresolved plans and report the
   mismatch.
4. Treat the invocation as sign-off only when the resolved plan and revision
   match active state and no technical clarification remains unanswered.
5. Ask that same planner to record approval, mark eligible tasks `ready`, and
   use `manage-task-cycle` to initialize the next task. Retain both contexts
   through cycle closeout.
6. Continue through the manager to development.

Report the resolved plan identifier and revision when approval finishes.
Approve no amendment, technology change, later revision, or different plan
implicitly. If there is no active approvable plan, stop instead of selecting an
archived plan.
