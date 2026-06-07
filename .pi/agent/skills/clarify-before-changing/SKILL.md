---
name: clarify-before-changing
description: Use before editing when a request is ambiguous, underspecified, or may affect code, behavior, multiple files, APIs, or architecture. Clarify intent, scope, trade-offs, and success criteria. Skip only for trivial mechanical edits.
---

# Clarify Before Changing

Use this skill to turn a change request into a small, clear implementation direction before editing. Apply it whenever the request is not purely mechanical.

## Goal

Reduce wrong assumptions without turning every change into a planning ceremony.

## Workflow

1. **Read enough context**
   - Inspect the relevant files, config, docs, or recent changes.
   - Do not scan the whole project unless the change needs it.

2. **Clarify only what matters**
   - Ask one question at a time when missing information would change the solution.
   - Prefer concrete options when possible.
   - Skip questions when the request and local patterns make the answer obvious.

3. **Outline the approach**
   - For simple changes, give a short plan in 2 to 4 bullets.
   - For meaningful design choices, present 2 or 3 options with trade-offs and a recommendation.
   - If the request touches multiple files, behavior, data shape, public APIs, or architecture, outline before editing.
   - If the user only asked for analysis or a plan, do not edit.

4. **Get approval when risk is real**
   - Ask before implementing if the change affects architecture, user-visible behavior, data shape, public APIs, or multiple subsystems.
   - For small, low-risk changes, proceed after the brief outline.
   - Do not turn obvious changes into a long planning exchange.

5. **Keep scope tight**
   - Solve the requested problem.
   - Avoid extra abstractions, broad rewrites, or unrelated cleanup.
   - Document decisions only when the project already has a place for them or the user asks.

## Output Style

Be concise and practical. Focus on intent, constraints, selected approach, and what will be changed. You may ask multiple clarifying questions across the conversation, but ask at most one per message and start with the one that matters most.
