---
name: debug-before-fixing
description: Investigate bugs, failing tests, build errors, flaky behavior, regressions, or unexpected output before proposing fixes. Use to reproduce, trace evidence, and fix the real cause instead of guessing.
---

# Debug Before Fixing

Use this sikll as an evidence-first debugging workflow for broken behavior.

## Rule

Do not propose or implement a fix until you can state the likely root cause and the evidence for it.

## Workflow

1. **Read the failure carefully**
   - Check full errors, stack traces, logs, warnings, paths, versions, and exit codes.
   - Identify where the failure starts before summarizing it.

2. **Reproduce or bound the issue**
   - Run the smallest relevant command or scenario when possible.
   - If it cannot be reproduced, collect evidence that narrows when and where it happens.
   - Note whether it is consistent, intermittent, environment-specific, or data-specific.

3. **Compare with working context**
   - Inspect relevant diffs, recent edits, config, dependencies, generated files, and environment changes.
   - Compare the broken path with nearby working patterns in the same project.

4. **Trace backward from the symptom**
   - Follow the bad value, state, request, file path, or command to its source.
   - In layered systems, inspect each boundary: input, output, config, and assumptions.
   - Add temporary diagnostics only when they reveal where the failure begins, then remove them before finishing unless they are useful permanent logs.

5. **Test one hypothesis**
   - State: "I think the cause is X because Y."
   - Test the smallest thing that can confirm or reject it.
   - Change one variable at a time.

6. **Apply the smallest confirmed fix**
   - Fix the confirmed cause, not a downstream symptom.
   - If the user only asked for diagnosis, stop after explaining the cause and evidence.

## Escalation

If several focused attempts fail, pause and reassess the model of the system before stacking more guesses.
