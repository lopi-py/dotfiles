# AGENTS.md

## Engineering Rules

- Fix root causes, not symptoms. Do not add sleeps, skips, hardcoded cases, swallowed errors, or test changes to hide implementation bugs.
- Follow existing codebase patterns, conventions, framework idioms, and local utilities before inventing new structure.
- Prefer the simplest solution that fully solves the problem. Avoid unnecessary abstractions, state, dependencies, or indirection.
- For medium or large changes, read enough context, confirm the intended direction, and get explicit approval before editing.
- Verify changes when possible with focused tests, type checks, linters, or manual checks. Do not claim verification unless the command/check was actually run.

## Style Rules

- Avoid comments unless they explain non-obvious reasoning, constraints, or workarounds. Prefer clear names and obvious control flow.
- Write with proper grammar and preserve language-specific characters, including accents and tildes.
- Never use em dashes in documentation, comments, messages, or user-facing text. Use commas, semicolons, parentheses, or separate sentences instead.
