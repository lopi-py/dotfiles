---
description: Review recently changed code for clarity and maintainability
argument-hint: "[focus]"
---
Review recently changed or relevant code for clarity, consistency, and maintainability improvements, then simplify it when safe.

Goal:
- Preserve behavior.
- Remove duplication, dead code, unnecessary abstractions, excessive state, needless indirection, and over-broad helpers.
- Improve unclear names or structure when it makes the code easier to understand.
- Keep the smallest design that fully solves the problem.
- Follow existing codebase patterns and avoid new dependencies unless clearly justified.

The examples above are not exhaustive. Make changes when they clearly reduce complexity or improve maintainability with low behavior risk, including small localized refactors, better names, or consolidating repeated logic.

Do not rewrite code just to make it different. Do not introduce a larger abstraction to remove a small amount of duplication. Prefer leaving stable, clear code unchanged over making cosmetic edits. It is acceptable and often correct to report that there are no actionable simplifications.

Workflow:
1. Determine the relevant code internally. Use git diffs when available, otherwise use the files changed or discussed in this session.
2. Identify simplifications that reduce complexity without reducing correctness.
3. Apply safe changes.
4. Run focused checks when useful.

Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the result.

Report format:

## Simplifications made

- List the changes made and why they improve clarity or maintainability.
- If no changes were needed, write `None`.

## Deferred suggestions

- List optional improvements only when they are meaningfully useful later.
- Do not include nits, cosmetic preferences, or changes that would not clearly improve maintainability.
- If none, write `None`.

Extra focus: $ARGUMENTS
