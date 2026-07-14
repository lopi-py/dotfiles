---
description: Define implementation-neutral requirements for a task
argument-hint: "<task>"
---
Create a grounded, implementation-neutral specification for:

````text
$ARGUMENTS
````

Inspect only the context needed to understand the current behavior, intended outcome, existing constraints, and affected users or interfaces. Do not modify files or implement changes. Define observable behavior without prescribing files, architecture, implementation steps, or validation commands.

Once the requirements are clear, use this format:

## Goal

- Problem or need being addressed.
- Intended user-visible or externally observable result.

## Non-goals

- Only related behavior that must be excluded to keep the scope clear.
- Write `None` when no explicit non-goals are needed.

## Requirements

- Required behavior, rules, and state transitions.
- Include relevant error handling and compatibility expectations.

## Success criteria

- Observable conditions that demonstrate the goal and requirements are satisfied.
- Cover important boundaries and failure cases.

## Constraints

- Established technical, product, or operational constraints.
- Explicit assumptions made for unspecified details.
