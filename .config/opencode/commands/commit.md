---
agent: build
description: Stage changes and create a commit with confirmation
subtask: true
---

Help me create a git commit. Follow these steps:

1. First, run `git status` to see all untracked and modified files
2. Run `git diff` to see unstaged changes and `git diff --staged` to see staged changes
3. Run `git log --oneline -5` to see recent commit message style

Based on the changes:

- Analyze what was modified and why
- Draft a concise commit message (1-2 sentences) that focuses on the "why" rather than the "what"
- Follow the repository's existing commit message conventions if apparent

Finally, proceed with the commit unless explicitly told otherwise

$ARGUMENTS
