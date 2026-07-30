# Validation stages

Run the smallest checks that can answer the question at each stage. The planner
records commands and risk in the task contract; the reviewer may expand them
when actual changed paths reveal more risk.

## 1. Developer loop

Purpose: fast feedback while implementing.

- Run the new or changed examples directly.
- Run the nearest affected unit, component, request, job, or JavaScript tests.
- Run style or static analysis only on changed files when supported.
- Do not repeatedly run the full suite during implementation.

## 2. Developer handoff

Purpose: prove the implementation is ready for independent review.

- Run all focused tests named in the task contract.
- Run tests for directly affected collaborators and public boundaries.
- Run changed-file style and static analysis.
- Record exact commands, results, failures, and skipped checks.

## 3. Reviewer validation

Purpose: independently challenge the implementation.

- Re-run the contract checks rather than trusting developer output.
- Add tests for actual changed paths, callers, failure modes, authorization,
  tenancy, data integrity, jobs, or browser behavior that the developer missed.
- Run the affected subsystem suite when a change crosses several units inside
  one subsystem.
- Run focused security or dependency checks when the change touches a relevant
  trust boundary.

## 4. Cycle gate

Purpose: establish the automated evidence required before user manual review.

Use targeted validation for isolated low- or medium-risk tasks. Run the full
project suite and complete configured quality checks when any of these apply:

- shared framework, application base class, global configuration, routing, or
  dependency changes;
- database migration, schema, concurrency, authentication, authorization,
  tenancy, secrets, payments, or destructive behavior;
- behavior spanning multiple subsystems or uncertain blast radius;
- a failed affected-area check suggests broader regression;
- milestone, release, deployment, or explicit user gate;
- the approved task contract requires it.

The reviewer records whether the cycle gate is `targeted` or `full`, why that
scope is sufficient, and all results. Manual review cannot start while a
required gate is failed, skipped without approval, or still running.

## 5. Milestone and release gate

Purpose: validate accumulated integration risk.

- Run the complete test suite, system suite, style checks, security checks, and
  dependency audit configured by the project.
- Use continuous integration when available and record the immutable build or
  run identifier.
- Resolve or explicitly approve every failure, flaky result, and skipped check
  before release.

## Change categories

| Change | Minimum developer checks | Minimum reviewer checks | Default cycle gate |
| --- | --- | --- | --- |
| Documentation or orchestration only | relevant format/schema checks | structural and reference validation | targeted |
| Model, query, or service | changed specs | affected collaborators and public boundary | targeted |
| Controller or policy | changed request/policy specs | authentication, authorization, failure, tenant paths | targeted |
| ViewComponent, view, Stimulus, or Turbo | changed component/JS specs | request plus critical system interaction | targeted |
| Job or mailer | changed job/mailer specs | enqueue, execution/delivery, retry or rendering paths | targeted |
| Migration or schema | migration/schema checks and affected model specs | data integrity, rollback/rollout, affected subsystem | full |
| Dependency, global config, shared base, or cross-cutting security | focused reproduction | affected subsystems and security checks | full |
| Milestone, release, or deployment | focused checks while iterating | complete configured validation | full |
