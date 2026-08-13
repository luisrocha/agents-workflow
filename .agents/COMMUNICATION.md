# User communication

Keep workflow chat quiet. Persist detailed work, commands, evidence, findings,
and reasoning in `.agent-context/`; do not narrate them to the user.

Send a user-facing message only when:

- a phase starts — one short sentence naming the phase and task;
- a phase finishes — one short sentence with its result and next gate;
- user input is required — one concise question with only essential options or
  checks. A manual-review request starts with a one- or two-sentence plain-
  language summary of what changed, then gives the shortest complete
  verification procedure and expected results; this is not progress narration.

Do not send elapsed-time updates, command-by-command commentary, repeated
progress reports, internal agent coordination, or evidence already stored in
the current packet. Stay silent while a phase is running, even when it takes a
long time.

Planning, development, each review iteration, manual review, and closeout are
phases. A correction starts a new development phase. When the user explicitly
asks for status or an explanation, answer that request directly but concisely.
