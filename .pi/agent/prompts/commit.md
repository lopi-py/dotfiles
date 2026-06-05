---
description: Commit staged changes with a concise message
argument-hint: "[focus]"
---
Commit the staged changes with a concise, appropriate message.

Rules:
- Inspect git state, the staged diff, and recent commits internally.
- Commit staged changes only. Never stage files automatically.
- If nothing is staged, suggest what likely should be staged and do not commit.
- If related unstaged files make the staged set look incomplete, ask before committing.
- Match the repository commit style. If unclear, use Conventional Commits, for example `feat: add export option`.

Message:
- Summarize intent, not every file.
- Prefer a concise imperative subject.
- Add a body only for useful context, risk, migration notes, or important behavior changes.
- Mention verification only when relevant and known.
- Avoid vague claims, hype, and change narration.

After committing, report only:

`<short commit hash>` <commit message>

If relevant files are left uncommitted, add:

Left uncommitted:
- List relevant files intentionally left uncommitted, wrapping each path in backticks.

If none are left uncommitted, omit this section entirely.

Extra focus: $ARGUMENTS
