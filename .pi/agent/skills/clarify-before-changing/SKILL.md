---
name: clarify-before-changing
description: Use before editing when a request is ambiguous, underspecified, or may affect code, behavior, multiple files, APIs, or architecture. Clarify intent, scope, trade-offs, and success criteria. Skip only for trivial mechanical edits.
---

# Clarify Before Changing

Use this skill as a lightweight workflow for turning ambiguous requests into a clear implementation direction.

## Goal

Reduce wrong assumptions without turning normal implementation work into a planning ceremony.

## Workflow

1. **Read targeted context**
   - Inspect only the files, config, docs, or recent changes needed to understand the likely scope.
   - Do not scan the whole project unless the ambiguity requires it.

2. **Identify the decision that matters**
   - Separate facts found in the codebase from assumptions.
   - Look for the smallest decision that would materially change the implementation.
   - If local patterns make the answer obvious, proceed without pausing.

3. **Ask the smallest useful question**
   - Ask exactly one clarification question per turn. Do not bundle questions in a list.
   - Prefer concrete options with a recommendation.
   - If a safe default is genuinely low-risk, state it briefly and proceed.

4. **Confirm only enough direction**
   - For small changes, a short summary of the intended approach is enough.
   - For requests that affect behavior, data shape, architecture, or multiple areas, confirm the meaningful choice before editing.
   - If the user asked only for analysis, do not edit.

## Output Style

Be concise and practical. Focus on the specific uncertainty, recommended direction, and what would change.
