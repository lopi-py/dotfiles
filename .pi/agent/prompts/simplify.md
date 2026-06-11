---
description: Review recently changed code for clarity and maintainability
argument-hint: "[focus]"
---
Review recently changed or relevant code for clarity, consistency, and maintainability improvements, then simplify it when safe.

Goal:
- Preserve behavior while reducing unnecessary complexity.
- Improve clarity, consistency, and maintainability using existing project patterns.
- Avoid cosmetic rewrites, speculative abstractions, new dependencies, and changes with unclear payoff.

Scope:
- Determine the relevant code internally. Use git diffs when available, otherwise review the files changed or discussed in this session.
- Inspect nearby call sites, tests, types, configuration, data shapes, and documentation when needed to validate a simplification.
- Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the result.
- If the requested focus narrows the review, honor it while still applying obvious safe simplifications visible in scope.

Look for safe simplifications, including but not limited to:
- Duplication, dead code, needless indirection, excessive state, or over-broad helpers.
- Unnecessary abstractions, special cases, configuration, branching, or data transformations.
- Misleading names, unclear structure, or repeated logic that materially hurts maintainability.
- Small localized refactors that make behavior easier to understand without broad redesign.

Change standards:
- Change code only when the simplification is concrete, behavior-preserving, and low risk.
- Prefer the smallest localized edit that fully solves the maintainability issue.
- Do not rewrite stable, clear code just to make it different.
- Do not introduce a larger abstraction to remove a small amount of duplication.
- Leave risky, broad, or subjective ideas as deferred suggestions, or omit them if they are not actionable.
- Run focused checks when useful to confirm behavior is preserved. Report only checks that actually ran.

Report format:
- Number changes and suggestions consecutively across the report.
- Include file paths and why each change or suggestion matters when useful.
- If a section has no items, write `None`; for Verification, write `Not run` when no checks ran.

## Simplifications made

- Behavior-preserving changes made and why they reduce complexity or improve maintainability.

## Deferred suggestions

- Optional improvements only when they are meaningfully useful later. Exclude nits, cosmetic preferences, and changes with unclear payoff.

## Verification

- Focused checks run to confirm behavior is preserved, with pass/fail status.

Extra focus: $ARGUMENTS
