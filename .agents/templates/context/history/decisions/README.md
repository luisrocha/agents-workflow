# Project decision records

Create one immutable `DEC-NNN.md` file for each approved technology decision or
plan amendment. Allocate the next unused ID from `INDEX.md`.

## Record template

```markdown
# DEC-NNN — Decision title

- **Status:** approved
- **Type:** technology or plan
- **Technology keys:** stable keys added, changed, removed, or none
- **Previous values:** prior values or not established
- **Approved values:** current approved values or plan change
- **Options and tradeoffs:** alternatives reviewed by the user
- **Reasoning:** why the option was selected
- **Affected work:** task or milestone IDs
- **Approved by:** user
- **Approved at:** timestamp
- **Resulting plan revision:** revision or unchanged
- **Resulting technology revision:** revision or unchanged
```

After writing the record, add one compact row to `INDEX.md`. Keep proposals in
the active milestone plan and remove them after the approved record exists.
