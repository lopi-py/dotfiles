---
description: Senior review for correctness, bugs, and maintainability
argument-hint: "[focus]"
---
Review the relevant code like a senior engineer before merge or commit.

Goal:
- Find concrete issues that could affect correctness, reliability, maintainability, or safe operation.
- Prioritize problems that a maintainer should act on before merge or commit.
- Avoid generic advice, personal preference, and speculative risks not supported by the code.

Scope:
- Determine the relevant code internally. Use git diffs when available, otherwise review the files changed or discussed in this session.
- Inspect nearby call sites, tests, types, configuration, data shapes, migrations, and documentation when needed to validate a finding.
- Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the review.
- If the requested focus narrows the review, honor it while still reporting serious unrelated issues visible in scope.

Review for concrete issues, including but not limited to:
- Incorrect behavior, regressions, incomplete changes, broken assumptions, or mismatch between implementation and intended behavior.
- Edge cases around empty, null, invalid, large, duplicated, unordered, concurrent, localized, or cross-platform inputs.
- Error handling gaps, swallowed errors, poor recovery, cleanup failures, resource leaks, and partial writes or state updates.
- API, schema, type, configuration, migration, serialization, compatibility, or public contract breaks.
- State management, lifecycle, caching, async, concurrency, ordering, race, and idempotency problems.
- Data validation, permission, path, environment, dependency, generated artifact, and packaging mistakes when visible from the code.
- Test coverage gaps only when they leave a concrete behavior, regression, or edge case unprotected.
- Duplicated logic, unnecessary complexity, misleading names, or unclear structure when they materially increase maintenance risk.

Finding standards:
- Report only plausible failure modes supported by the code.
- Include the file path and line or symbol when possible.
- Explain the impact, why it matters, and the condition that triggers it.
- Distinguish confirmed bugs from risks or assumptions, and group repeated root causes.
- Avoid subjective nitpicks unless they affect readability, consistency, correctness, or maintainability.
- Tie missing tests to specific unprotected behavior. Exclude praise, clean-code summaries, and repository discovery notes.

Report format:
- Number findings consecutively across the report.
- Include file paths and why each issue matters.
- If a section has no findings, write `None`.

## Blocking issues

- Bugs, regressions, data loss or corruption risks, serious reliability problems, compatibility breaks, unsafe operational behavior, or high-risk maintenance problems that should be fixed before merge or commit.

## Non-blocking suggestions

- Useful improvements that reduce future risk or complexity.

Extra focus: $ARGUMENTS
