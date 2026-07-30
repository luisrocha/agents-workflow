---
name: start-work
description: Start the document-driven orchestration workflow from an inline goal or the user-authored PROJECT_BRIEF.md, creating .agent-context from fixed framework templates when needed. Use when the user invokes $start-work or asks to begin a new project, milestone, or complex idea through the manager, planner, developer, and reviewer workflow.
---

# Start work

1. Start a fresh manager from `.agents/subagents/manager.md`.
2. Reconstruct persisted state before proposing changes when `.agent-context/`
   already exists.
3. Accept an inline goal when supplied. Otherwise, have the manager read the
   user-owned `PROJECT_BRIEF.md` and use it as the complete intake brief.
4. If neither source contains a concrete goal, ask the user to complete the
   brief or provide a goal. Do not plan from placeholder text.
5. If `.agent-context/` is absent, have a fresh planner initialize it from
   `.agents/templates/context/` using `manage-task-cycle`. Never edit the fixed
   templates.
6. If work is already active, preserve it and ask whether the user intended to
   resume it or replace its plan.
7. Relay the brief to a fresh planner without adding assumptions. Have the
   planner inspect the project, batch uncertain technical questions, and
   prepare the roadmap or active milestone plan.
8. Stop for explicit user sign-off before development.

Treat `PROJECT_BRIEF.md` as read-only user input. Never initialize a developer
directly or overwrite active orchestration state.
