---
name: debug-before-fixing
description: Investigate bugs, failing tests, build errors, flaky behavior, regressions, or unexpected output before proposing fixes. Use to reproduce, trace evidence, and fix the real cause instead of guessing.
---

# Debug Before Fixing

Use this skill when something is broken. The purpose is to gather enough evidence to fix the cause, not patch the symptom.

## Rule

Do not propose or implement a fix until you can state the likely root cause and the evidence for it.

## Workflow

1. **Read the failure carefully**
   - Read full errors, stack traces, logs, warnings, paths, versions, and exit codes.
   - Do not summarize an error before checking the details that identify where it starts.

2. **Reproduce or bound the issue**
   - Run the smallest relevant command or scenario when possible.
   - If it is not reproducible, collect evidence instead of guessing.
   - Note whether it is consistent, intermittent, environment-specific, or data-specific.

3. **Check what changed**
   - Inspect relevant diffs, recent edits, config, dependencies, generated files, and environment changes.
   - Compare broken code with nearby working patterns in the same project.

4. **Trace the data or control flow**
   - Follow the bad value, state, request, file path, or command backward to its source.
   - In multi-layer systems, inspect each boundary: input, output, config, and assumptions.
   - Add temporary diagnostics only when they reveal where the failure begins. Remove them before finishing unless they are useful permanent logs.

5. **Form one hypothesis**
   - State: "I think the cause is X because Y."
   - Test the smallest useful thing that can confirm or reject it.
   - Change one variable at a time.

6. **Fix the cause**
   - Make the smallest complete implementation change that addresses the confirmed cause.
   - Do not bundle unrelated refactors or opportunistic cleanup.
   - For bugs, add or update a regression test when practical.
   - If the user only asked for diagnosis, stop after explaining the cause and evidence.

7. **Verify honestly**
   - Run the focused test, reproduction, type check, lint, build, or manual check that proves the fix.
   - Report only checks that actually ran.
   - Keep verification summaries brief, but include enough detail to show what was proven.
   - If the fix fails, stop and update the hypothesis instead of stacking more guesses.

## Escalation

If several focused attempts fail, pause and reassess the design. Repeated failures usually mean the model of the system is wrong, not that one more patch is needed.
