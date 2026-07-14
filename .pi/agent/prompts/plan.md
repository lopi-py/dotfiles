---
description: Create an implementation plan from a task or specification
argument-hint: "[task or specification]"
---
Create a grounded implementation plan.

Input:

````text
$ARGUMENTS
````

When the input is empty, use the latest sufficiently defined task or specification.

Inspect only the context needed to identify the current behavior, affected code, existing patterns, constraints, dependencies, and validation. Do not modify files or implement changes. Include alternatives only when an important implementation trade-off affects the plan.

Once the requirements are clear, begin with a one or two sentence summary, then use:

## Understanding

- Intended outcome and accepted requirements.
- Relevant codebase facts, constraints, and assumptions.

## Proposed approach

- Ordered, concrete implementation steps.
- Include file paths where they clarify the work.
- Account for affected callers, tests, documentation, or migrations when relevant.
