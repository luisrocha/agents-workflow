# Technology profile

This file contains only current approved technology values. It does not retain
alternatives, proposals, superseded values, or decision reasoning.

## Profile

- **Revision:** 1
- **Status:** active
- **Last approved by:** framework default
- **Last approved at:** initialization
- **Last decision:** DEC-001

Plans and current-cycle packets reference this exact revision and the stable
technology keys they require.

## Current approved values

| Key | Technology | Current value | Last decision |
| --- | --- | --- | --- |
| TECH-001 | Authorization | Pundit | DEC-001 |
| TECH-002 | Background jobs | Solid Queue | DEC-001 |
| TECH-003 | Service objects | `ApplicationService`, one `#call`, `.call` shortcut | DEC-001 |
| TECH-004 | Service outcomes | Result objects with `success?` and `failure?` | DEC-001 |
| TECH-005 | Test framework | RSpec | DEC-001 |
| TECH-006 | Test data | FactoryBot | DEC-001 |
| TECH-007 | Declaration matchers | Shoulda Matchers | DEC-001 |
| TECH-008 | Rendering and JavaScript | Hotwire | DEC-001 |
| TECH-009 | Components | ViewComponent | DEC-001 |
| TECH-010 | CSS | Tailwind CSS | DEC-001 |
| TECH-011 | JavaScript static analysis | ESLint | DEC-001 |
| TECH-012 | Accessibility | WCAG 2.2 AA | DEC-001 |

## Update rules

- Put unresolved choices and alternatives in the active plan, not here.
- Only a user-approved plan amendment may add, change, or remove a value.
- Before replacing a value, create
  `.agent-context/history/decisions/DEC-NNN.md` containing its previous value,
  approved value, reasoning, and affected work.
- Add the decision to `.agent-context/history/decisions/INDEX.md`.
- Increment the profile revision once per approved decision batch.
- Update affected rows to the new decision ID, then remove all superseded
  values from this file.
- Add a stable `TECH-NNN` key only when its first value is approved.
