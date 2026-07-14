---
description: Review code for evidence-backed security risks
argument-hint: "[focus]"
---
Review the relevant code for concrete security risks. Do not modify files or implement changes.

Focus: $ARGUMENTS

Use the current git diff when available; otherwise use the files changed or discussed in this session. Trace untrusted data, privileged operations, and sensitive data through surrounding controls.

A finding must have a plausible security impact supported by the code, data flow, or configuration. For each finding:

- Cite the file and line or symbol when possible.
- Identify the affected asset or trust boundary.
- Explain the prerequisites, exploit path, impact, and evidence.
- Distinguish a confirmed vulnerability from a risk, assumption, or hardening opportunity.
- Recommend the smallest concrete mitigation.

Group symptoms with the same root cause. Omit praise, generic best practices, unsupported threats, and discovery notes.

Number findings consecutively across all sections. Write `None` when a section has no findings.

## High risk

Vulnerabilities that plausibly enable system compromise, sensitive data exposure, privilege escalation, code execution, serious authorization bypass, or severe availability loss.

## Medium risk

Security-relevant issues with meaningful impact but limiting preconditions or exploitability.

## Low risk / hardening

Only concrete, actionable improvements tied to an identified exposure.
