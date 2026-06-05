---
description: Senior review for correctness, bugs, and maintainability
argument-hint: "[focus]"
---
Review the relevant code like a senior engineer before merge or commit.

Scope:
- Determine the relevant code internally. Use git diffs when available, otherwise review the files changed or discussed in this session.
- Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the review.

Look for correctness issues, edge cases, regressions, incomplete changes, error handling gaps, duplicated logic, unnecessary complexity, unintended files, generated artifacts, and missing validation coverage. This list is not exhaustive. Report any other concrete issue that materially affects correctness, maintainability, or safe operation. Do not nitpick style unless it affects readability, consistency, or maintainability.

Report format:

## Blocking issues

- Issues that should be fixed before merge or commit.
- Include file paths and why each issue matters.
- If none, write `None`.

## Non-blocking suggestions

- Useful improvements that are not required for correctness.
- If none, write `None`.

Extra focus: $ARGUMENTS
