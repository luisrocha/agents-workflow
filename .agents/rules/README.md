# Code rule routing

These rules are mandatory for planned and implemented project changes. The
defaults recorded in `.agent-context/planning/TECHNOLOGY.md` apply unless the user
explicitly approves an override through the planning process.

## Agent responsibilities

- **Manager:** does not interpret code rules. It requires planner, developer,
  and reviewer evidence in the current packet.
- **Planner:** reads `principles.md`, `security.md`,
  `ruby-on-rails/testing.md`, the technology profile, and every rule relevant
  to expected paths. It uses the `route-code-rules` skill, writes the
  deterministic rule manifest into the task contract, and turns those rules
  into acceptance criteria and validation.
- **Developer:** reads only the manifest and current approved technology keys
  before editing. It reports any conflict or newly affected path.
- **Reviewer:** uses the `route-code-rules` skill to verify the manifest against
  actual changed paths, adds omissions as findings, and checks listed rules
  independently.

Every project-change manifest includes `principles.md`, `security.md`,
`tooling.md`, and `validation.md`. Code changes also include the relevant
framework testing rules.

## Rules

- `principles.md`: all project code
- `security.md`: framework-neutral security requirements
- `tooling.md`: framework-neutral command and change-safety requirements
- `validation.md`: stage-specific test selection and full-suite gates
- `frontend/README.md`: framework-neutral interface, accessibility, and UX rules
- `javascript/README.md`: JavaScript, ESLint, and Stimulus rules
- `ruby-on-rails/README.md`: routing for all Rails-specific rules

If rules conflict with the approved plan or technology profile, stop and ask
the planner to obtain a user decision and record an amendment. Existing
project conventions win only when they do not violate security, data safety,
or an explicit approved decision.
