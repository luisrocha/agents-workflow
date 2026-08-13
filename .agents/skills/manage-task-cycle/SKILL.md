---
name: manage-task-cycle
description: Create .agent-context from fixed templates, then initialize, verify, resume, and close its document-driven task cycles. Use when the planner starts a project's context, moves an approved task into CURRENT.md, checks state consistency, archives an approved cycle, advances the active plan, or resets the current packet.
---

# Manage task cycle

Preserve one consistent source of truth under `.agent-context/` while moving a
task through the orchestration workflow. `$start-work` may perform the initial
template copy before starting the manager; after bootstrap, only the planner
may edit these project context documents.

## Create project context

When `.agent-context/` is absent, `$start-work` or the planner runs:

```sh
.agents/skills/manage-task-cycle/scripts/init-context.sh .
```

The command copies the fixed blank templates and refuses to overwrite an
existing context. Never edit `.agents/templates/context/` during project work.

## Verify state

Run:

```sh
.agents/skills/manage-task-cycle/scripts/check-state.sh .
```

Stop on any reported mismatch. Reconcile state from the approved plan and
immutable records; never reconstruct it from chat.

For an exact manual-review command, validate the task, stage, reviewer verdict,
and gate in the same deterministic check:

```sh
.agents/skills/manage-task-cycle/scripts/check-state.sh . TASK-NNN manual_review
```

## Initialize a cycle

1. Confirm the plan has explicit user approval and the selected task is
   `ready`.
2. Confirm `ACTIVE.md`, the plan, `TECHNOLOGY.md`, and `CURRENT.md` reference
   compatible revisions.
3. Record a commit SHA as baseline. If none exists, record an explicit
   worktree baseline and all pre-existing changed paths.
4. Copy only the approved task contract into `CURRENT.md`.
5. Set the task to `in_progress` and the packet to `development`.
6. Run the state check and resolve every failure before handoff.

## Resume a cycle

1. Run the state check.
2. Use `CURRENT.md` status to choose which existing cycle role receives the
   next follow-up task; never spawn a duplicate role.
3. Load only exact rule and history paths listed in the packet.
4. Stop for planner reconciliation when revisions or identifiers disagree.

## Close a cycle

1. Require reviewer approval, a passing required cycle gate, and explicit user
   manual approval.
2. Create the immutable task record from `CURRENT.md`. Begin it with a
   `## Summary` section containing the same one- or two-sentence plain-language
   summary used for manual review.
3. Add one compact row to the milestone cycle index.
4. Remove the completed task from the active plan and expose the next task.
5. Reset `CURRENT.md` to `idle`; do not retain completed evidence there.
6. Update milestone state when its completion criteria are satisfied.
7. Run the state check before ending the cycle's retained agent contexts.

Do not change technology or plan revisions through this skill. Use the
approved-decision workflow for amendments.
