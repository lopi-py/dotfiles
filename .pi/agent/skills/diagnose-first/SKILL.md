---
name: diagnose-first
description: Diagnose bugs, failing tests, build errors, regressions, flaky behavior, and unexpected output using reproducible evidence. Use before proposing or implementing a fix so the change addresses the root cause rather than a symptom.
---

# Diagnose First

Build a root-cause statement supported by observed evidence before choosing a fix.

## Workflow

1. Capture the complete failure, including errors, logs, paths, versions, and exit codes.
2. Reproduce it with the smallest relevant command or scenario. If reproduction is not possible, bound the conditions under which it occurs.
3. Trace the bad value, state, request, path, or command backward across each relevant boundary.
4. Compare the broken path with nearby working patterns, recent diffs, configuration, dependencies, generated files, and environment changes.
5. Test the smallest falsifiable hypothesis. Change one variable at a time and separate observation from inference.
6. If a fix is in scope, change the confirmed cause and remove temporary diagnostics unless they are useful to keep.
7. Rerun the failing command or scenario and focused surrounding checks to confirm the result.

If several focused hypotheses fail, reconsider your understanding of the system instead of stacking speculative fixes.
