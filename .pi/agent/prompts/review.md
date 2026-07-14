---
description: Review code for actionable correctness and maintenance issues
argument-hint: "[focus]"
---
Review the relevant code before merge or commit. Do not modify files or implement changes.

Focus: $ARGUMENTS

Use the current git diff when available; otherwise use the files changed or discussed in this session. Inspect surrounding code only as needed to validate a finding.

A finding must be actionable, supported by the code, and tied to a plausible failure mode. Prioritize correctness, data integrity, reliability, compatibility, safe operation, and important maintenance risks. For each finding:

- Cite the file and line or symbol when possible.
- Explain the trigger, impact, and evidence.
- Distinguish a confirmed defect from a risk or assumption.
- Recommend a concrete correction when it is not obvious.

Group symptoms with the same root cause. Mention missing tests only for a specific unprotected behavior. Omit praise, generic advice, subjective nits, and discovery notes.

Number findings consecutively across both sections. Write `None` when a section has no findings.

## Blocking issues

Defects, regressions, data loss risks, serious reliability failures, compatibility breaks, unsafe behavior, or high-risk maintenance problems that should be fixed before merge.

## Non-blocking suggestions

Concrete improvements that reduce meaningful future risk or complexity.
