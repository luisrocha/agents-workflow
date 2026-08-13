---
name: start-work
description: Start the document-driven orchestration workflow from an inline goal or the user-authored PROJECT_BRIEF.md, creating .agent-context from fixed framework templates when needed. Use when the user invokes $start-work or asks to begin a new project, milestone, or complex idea through the manager, planner, developer, and reviewer workflow.
---

# Start work

Follow `.agents/COMMUNICATION.md` throughout this workflow.

1. Before starting any role, check for `.agent-context/CURRENT.md`. When it is
   absent because `.agent-context/` does not exist, run:

   ```sh
   .agents/skills/manage-task-cycle/scripts/init-context.sh .
   .agents/skills/manage-task-cycle/scripts/check-state.sh .
   ```

   Stop if `.agent-context/` exists but `CURRENT.md` is missing; never overwrite
   or silently repair partial state.
2. Start a fresh manager from `.agents/subagents/manager.md` only after context
   initialization succeeds.
3. Reconstruct persisted state before proposing changes when `.agent-context/`
   already exists.
4. Accept an inline goal when supplied. Otherwise, have the manager read the
   user-owned `PROJECT_BRIEF.md` and use it as the complete intake brief.
5. If neither source contains a concrete goal, ask the user to complete the
   brief or provide a goal. Do not plan from placeholder text.
6. If work is already active, preserve it and ask whether the user intended to
   resume it or replace its plan.
7. Relay the brief to a fresh planner without adding assumptions. Have the
   planner inspect the project, batch uncertain technical questions, and
   prepare the roadmap or active milestone plan. Retain this manager and
   planner for the task cycle that follows approval.
8. Stop for explicit user sign-off before development.

Treat `PROJECT_BRIEF.md` as read-only user input. Never initialize a developer
directly, edit fixed templates, or overwrite active orchestration state. The
bootstrap runs before the manager exists, so the manager remains read-only.
