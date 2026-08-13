# Current cycle

This is the only in-flight handoff document. Agents update their owned sections
and do not copy this evidence into the active plan.

## Ownership

- **Planner:** cycle identity, approved task contract, manual review, closeout.
- **Developer:** developer evidence; for a direct correction, its exact feedback
  and transition from `manual_review` through `development` to `review`.
- **Reviewer:** reviewer evidence; after a direct correction, transition back to
  `manual_review` on approval.
- **Manager:** read-only; relays user and agent messages.

## Cycle identity

- **Status:** idle
- **Task:** —
- **Plan:** PLAN-001 revision 1
- **Plan path:** `.agent-context/planning/plans/PLAN-001.md`
- **Technology profile revision:** 1
- **Baseline revision:** —
- **Started at:** —

## Approved task contract

- **Outcome:** —
- **Scope:** —
- **Risk:** —
- **Milestone/release gate:** —
- **Acceptance criteria:** —
- **Developer checks:** —
- **Reviewer checks:** —
- **Required cycle gate:** —
- **Manual checks:** _Prerequisites; exact commands/actions; expected results;
  cleanup; protected files/data._
- **Applicable rules:** —
- **Technology keys:** —
- **Relevant cycle records:** —
- **Relevant decision records:** —

## Developer evidence

- **Status:** not_started
- **Direct user feedback:** —
- **Files changed:** —
- **Implementation summary:** —
- **Developer-loop checks:** —
- **Handoff commands and results:** —
- **Approved assumptions and decisions followed:** —
- **Remaining risks:** —

## Reviewer evidence

- **Iteration:** 0
- **Verdict:** pending
- **Baseline and changed paths verified:** —
- **Rules checked:** —
- **Findings:** —
- **Independent commands and results:** —
- **Cycle gate:** _targeted or full_
- **Gate rationale:** —
- **Gate status:** pending
- **CI/build identifier:** —
- **Acceptance criteria verified:** —
- **Residual risks:** —

## Manual review

- **Status:** pending
- **Requested at:** —
- **User feedback:** —
- **Approved at:** —

For direct scope-preserving corrections, the developer records the feedback and
returns the cycle to `development`; plan-affecting feedback goes through the
planner. Only explicit user approval sets the cycle to `approved`.

## Closeout

- **Final result:** —
- **Cycle record:** —
- **Next task:** —
