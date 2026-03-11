---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

Based on the above changes, create a single git commit.

## Rules

- Do NOT add a Co-Authored-By line.
- Commit message format: a single concise subject line, then usually NOTHING else.
- Only add a body if there's a genuinely non-obvious *why* — e.g. "X was done this way because Y constraint".
- NEVER describe *what* changed in the body. No summaries, no listing changes, no "X replaces Y", no "A now handles B". Not as bullets, not as prose. The diff is the description of what changed.
- You have the capability to call multiple tools in a single response. Stage and create the commit using a single message. Do not use any other tools or do anything else. Do not send any other text or messages besides these tool calls.
