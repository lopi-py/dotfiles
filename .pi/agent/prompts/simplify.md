---
description: Remove unnecessary code and align relevant code with established patterns
argument-hint: "[focus]"
---
Simplify relevant code while preserving observable behavior and public contracts.

Focus: $ARGUMENTS

Use the current git diff when available; otherwise use the files changed or discussed in this session. Inspect surrounding code only as needed to validate a simplification.

Inspect the full scope before editing, including usages and relevant shared code. Apply changes that meet these criteria:

- Remove unused code or exports, empty placeholders, and unreachable branches.
- Remove redundant state, checks, wrappers, or branches when usages prove no behavior relies on them.
- Consolidate duplicated behavior or domain rules when they represent the same concept and must remain aligned.
- Replace custom code with an established helper or component that serves the same role.

Each change must reduce maintenance burden while leaving intent at least as clear. Do not optimize for fewer lines, weaken safeguards without verifying the invariant, combine distinct responsibilities, reuse types or names for different concepts merely because their shapes match, or make formatting-only changes.

## Simplifications made

List only edits actually made, with each file path and why the change improves the code without changing behavior. Write `None` when no changes qualified.
