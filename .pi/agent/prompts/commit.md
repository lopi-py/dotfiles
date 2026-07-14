---
description: Commit staged changes with a concise message
argument-hint: "[focus]"
---
Commit only the currently staged changes.

Focus: $ARGUMENTS

- Inspect git status, the staged diff, and recent commit style.
- Never stage files or alter the working tree.
- If nothing is staged, do not commit; identify the files that likely need staging.
- If relevant unstaged changes make the staged set plausibly incomplete, ask whether to proceed.
- Write a concise, imperative subject that summarizes intent instead of listing every file.
- Match the repository's commit style; if none is clear, use Conventional Commits.
- Add a body only for important context, risk, migration notes, behavior changes, or useful verification.

After a successful commit, report only:

`<short commit hash>` <subject>

If relevant files remain uncommitted, append:

Left uncommitted:
- `<path>`

Omit that section when no relevant files remain.
