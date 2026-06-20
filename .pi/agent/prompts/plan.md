---
description: Build a concise engineering plan before implementation
argument-hint: "<task>"
---
Plan the requested change before editing code.

Task:
````text
$ARGUMENTS
````

Goal:
- Understand the requested change and the project context needed to plan safely.
- Outline the smallest implementation plan that solves the task using existing patterns.
- Surface assumptions and focused validation before implementation.

Rules:
- Inspect targeted context before planning: relevant files, docs, diffs, tests, commands, or existing patterns.
- Do not edit files, run broad refactors, or implement until the plan is approved.
- Keep the plan proportional to the task. Trivial changes should have short plans.
- Prefer existing project patterns over new structure.
- Be specific and avoid vague steps like "handle backend" or "do auth".
- Mention alternatives only when there is a real trade-off.

If anything important is unclear, ask the necessary clarifying questions, then wait before planning.

Report format:

Start with a one or two sentence summary of what will be changed and the intended outcome.

## Understanding

- What needs to change and why.
- Concrete facts from the codebase that shape the plan.
- Assumptions or constraints that affect the approach.

## Proposed approach

- Ordered implementation steps.
- Include relevant file paths inline when they clarify the work.

## Validation

- Focused checks to run after implementation.
- Include exact commands when known.
- If validation is manual or not available, state that clearly.
