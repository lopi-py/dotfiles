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
- Propose the smallest approach that solves the task using existing patterns.
- Surface assumptions, risks, and focused verification before implementation.

Rules:
- Inspect only the context needed to plan safely: relevant files, docs, diffs, tests, or existing patterns.
- Do not edit files, run broad refactors, or implement until the plan is approved.
- Ask clarifying questions only when missing information would materially change the plan. Keep them concise, decision-oriented, and limited to what is needed to plan safely.
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

## Clarifying questions

- Ask only the clarifying questions needed to resolve decisions that would materially change the plan.
- Prefer stating safe assumptions over asking low-impact preference questions.
- If no clarification is needed, write `None`.
