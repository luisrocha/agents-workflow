---
name: route-code-rules
description: Build and verify the deterministic .agents code-rule manifest from expected or changed project paths. Use when planning a task, when implementation affects a new path, or when reviewing whether the current packet includes all applicable universal, Rails, JavaScript, frontend, security, tooling, and validation rules.
---

# Route code rules

Produce a minimal complete rule manifest from paths, then refine it using the
task's actual behavior and trust boundaries.

## Route paths

The planner owns the approved manifest: run with expected paths during planning
and write the result into the task contract. The reviewer owns verification:
run with actual changed paths, compare the result with the approved manifest,
and record omissions as findings without replacing or editing the contract.

```sh
.agents/skills/route-code-rules/scripts/route.sh PATH...
```

The script prints candidates in manifest form. It never edits
`.agent-context/CURRENT.md`.

## Refine the manifest

1. Always retain the four universal rules.
2. Read the emitted routing files and retain every concrete rule relevant to
   the task.
3. Add rules implied by behavior even when paths do not reveal them—for
   example authorization, tenancy, browser interaction, jobs, or data rollout.
4. Remove only candidates proven irrelevant.
5. Record exact rule paths in the approved task contract.

The developer only reports newly affected paths; it never routes or edits the
manifest.
