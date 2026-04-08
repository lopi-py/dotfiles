# CLAUDE.md

## Code Style

- Write self-documenting code: descriptive names and obvious structure. If code needs a comment to be understood, refactor it
- The only valid reason to write a comment is to explain *why* something non-obvious is done (workarounds, tricky constraints). Never write comments that describe *what* the code does, narrate changes ("added X", "now does Y"), or label sections
- No dead code, unused imports, or unnecessary abstractions
- Handle errors explicitly. Never swallow failures
- Match existing codebase patterns and conventions

## Engineering Philosophy

- Code should be simple, clean, and elegant (all three, balanced). Never sacrifice one entirely for another. Find the solution that best fits all
- No overengineering. Don't add abstractions, indirection, or extra state unless the problem genuinely demands it
- Use what already exists (framework features, built-in parameters, existing utilities) before writing anything new

## Work Ethic

- Never take the lazy route. Always implement the correct, thorough solution even when a shortcut exists
- If a task requires multiple steps, do all of them. Do not skip steps, leave placeholders, or defer work that should be done now
- When fixing a bug, address the root cause, not just the symptoms. When adding a feature, implement it fully, not a hollow skeleton

## Writing Style

- Never use em dashes (—) in documentation, comments, commit messages, or any written text. Use alternatives like commas, parentheses, colons, semicolons, or separate sentences instead
