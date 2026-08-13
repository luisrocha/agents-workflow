---
name: select-validation
description: Select and record the smallest sufficient project checks for planning, development, review, cycle gates, milestones, and releases. Use when defining task validation, iterating on code, preparing a developer handoff, independently reviewing changes, or deciding between targeted and full validation.
---

# Select validation

Choose checks from repository evidence and the current task risk. Never invent
a command or run the full suite by habit.

## Discover commands

Run:

```sh
.agents/skills/select-validation/scripts/discover-commands.sh .
```

Prefer checked-in binstubs and commands used by CI. Inspect only the relevant
reported files before recording exact commands in the task contract.

## Select by stage

Read `.agents/rules/validation.md`, then:

- **Planner:** define separate developer-loop, handoff, reviewer, cycle-gate,
  and manual checks. Avoid assigning the same command to multiple stages unless
  independent execution is necessary; record that reason in the contract.
- **Developer loop:** run changed examples and their nearest affected tests.
- **Developer handoff:** add direct collaborators, public boundaries, and
  changed-file analysis.
- **Reviewer:** run reviewer-stage contract checks and add coverage based on
  actual paths, callers, failure modes, and risk. Repeat a developer command
  only when the contract, acceptance-critical independence, or a finding
  requires it; record why.
- **Cycle gate:** use targeted validation unless a documented full-gate trigger
  applies.
- **Milestone or release:** run the complete configured quality gate.

For every selected command, state which acceptance criterion or risk it
validates. Remove redundant commands that answer the same question.

## Record evidence

Record the exact command, exit result, relevant warning, and any skipped check
with its reason. Do not translate a missing, skipped, or still-running check
into a pass.

The reviewer may expand validation but must record why the original scope was
insufficient.
