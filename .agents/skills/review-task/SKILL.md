---
name: review-task
description: Submit the user's manual approval or requested changes for the exact task awaiting manual review. Use when the user invokes $review-task with a TASK-NNN identifier and either approved or concrete feedback after reviewing reviewer-approved changes.
---

# Review task

1. Require an exact `TASK-NNN` identifier and either `approved` or concrete
   requested changes.
2. Start a fresh manager and verify that `.agent-context/CURRENT.md` names that task, is at
   `manual_review`, records reviewer approval, and has a passing required gate.
3. Reject stale task identifiers or premature review.
4. For `approved`, ask a fresh planner to record explicit user approval and
   close the cycle using `manage-task-cycle`.
5. For requested changes, ask a fresh planner to persist the feedback and
   return the packet to `development`; then resume the developer-reviewer loop.
6. Require another manual review after revised changes pass review.

Never interpret silence or general positive wording as approval.
