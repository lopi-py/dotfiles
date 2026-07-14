# AGENTS.md

## Engineering Rules

- Reuse shared knowledge and behavior, but do not abstract incidental similarity.
- Prefer the simplest design that meets current requirements. Do not add speculative features, flexibility, or abstractions.
- Keep responsibilities cohesive, interfaces small, dependencies explicit, and module boundaries clear.
- Prefer composition over inheritance. Use inheritance only for stable, substitutable relationships.
- Avoid reaching through collaborators or exposing their internals. Add indirection only when a concrete variation or external boundary requires it.
- Follow established project patterns and dependency direction. Change contracts deliberately and update affected callers, tests, documentation, and migrations.
- Preserve invariants, updating them deliberately when requirements change. Validate changes with focused checks.

## Style Rules

- Use comments only to explain non-obvious reasoning, constraints, or workarounds.
- Do not use em dashes; use commas, parentheses, or separate sentences instead.
