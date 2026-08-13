---
name: review-task
description: Submit the user's manual approval or requested changes for the task awaiting manual review. Use when the user invokes $review-task, optionally with a TASK-NNN identifier, and supplies either approved or concrete feedback after reviewing reviewer-approved changes; an omitted identifier resolves from CURRENT.md.
---

# Review task

Follow `.agents/COMMUNICATION.md` throughout this workflow.

1. Require either `approved` or concrete requested changes. Read the task from
   `CURRENT.md` when `TASK-NNN` is omitted; never resolve it from chat, the
   active plan's next task, or archived history. If an identifier is supplied,
   require it to match the current task.
2. Do not start a manager. Verify the exact task, stage, reviewer approval, and
   passing gate directly using the supplied or resolved identifier:

   ```sh
   .agents/skills/manage-task-cycle/scripts/check-state.sh . TASK-NNN manual_review
   ```

3. Reject a missing current task, stale identifier, premature review, or
   inconsistent state.
4. For `approved`, send a follow-up to the active cycle's existing planner.
   Give it the bounded closeout set: `CURRENT.md`, `ACTIVE.md`, its referenced
   plan, and that milestone's cycle index. Ask it to record the explicit
   approval and close the cycle with `manage-task-cycle`. Load roadmap and
   milestone indexes only when this is the final task in the milestone.
5. Approval closeout must not inspect project code, rerun tests, rebuild
   containers, start developer or reviewer roles, or repeat the completed gate.
6. For requested changes, use the direct correction path when the feedback is
   clearly within the approved outcome, scope, acceptance criteria, technology,
   and rule manifest and requires no uncertain technical decision. Send the
   exact feedback directly to the active cycle's existing developer without
   involving the manager or planner.
7. Have the developer record the feedback, return the packet to `development`,
   implement it, run developer-stage checks, and hand off directly to the
   active cycle's existing reviewer. Have the reviewer inspect every change
   made after the request, revalidate the final task diff, and run the required
   reviewer checks and cycle gate. The existing manager asks for manual review
   again only after reviewer approval.
8. If the feedback changes scope, acceptance criteria, technology, rules,
   dependencies, migrations, public contracts, authorization, security, or
   contains uncertainty, do not use the shortcut. Send it through the existing
   manager and planner for clarification and plan-amendment sign-off.
9. Require another manual review after revised changes pass review.

Report the resolved task identifier when the workflow finishes or requests the
next manual review. Never interpret silence or general positive wording as
approval. While the cycle is active, never spawn a replacement role
automatically. If its existing agent cannot be reached, stop and ask the user
how to recover.
