---
description: Build a concise engineering plan before implementation
argument-hint: "<task or focus>"
---
Plan the requested change before editing code.

Task or focus: $ARGUMENTS

Goal:
- Understand the requested change and relevant project context.
- Propose the smallest safe approach.
- Identify risks, assumptions, and a concrete verification path.

Rules:
- Inspect only the context needed to plan safely: relevant files, docs, diffs, tests, or existing patterns.
- Do not edit files, run broad refactors, or implement until I approve the plan.
- Ask one clarifying question only if missing information would materially change the plan.
- Keep the plan proportional to the task. Trivial changes should have short plans.
- Prefer existing project patterns over new structure.
- Mention alternatives only when there is a real trade-off.

Report format:

## Understanding

- What needs to change and why.
- Relevant constraints, assumptions, or existing patterns.

## Proposed approach

- Ordered implementation steps.
- Files or areas likely to change.

## Risks and checks

- Main risks, edge cases, or compatibility concerns.
- Focused verification to run after implementation.

## Clarifying question

- Ask one question only if needed. If none, write `None`.

Keep it practical. Avoid ceremony, large design docs, task trackers, and speculative architecture.
