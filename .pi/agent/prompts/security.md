---
description: Review relevant code for concrete security risks
argument-hint: "[focus]"
---
Review the relevant code for concrete security risks.

Goal:
- Find concrete security risks that could affect confidentiality, integrity, availability, authorization, or safe operation.
- Prioritize problems by realistic impact, exploitability, and what should be fixed before merge or commit.
- Avoid generic checklist items, best-practice advice, and speculative threats not supported by the code.

Scope:
- Determine the relevant code internally. Use git diffs when available, otherwise review the files changed or discussed in this session.
- Inspect nearby call sites, trust boundaries, authentication and authorization checks, validation, configuration, data flows, dependencies, generated artifacts, and documentation when needed to validate a finding.
- Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the review.
- If the requested focus narrows the review, honor it while still reporting serious unrelated security issues visible in scope.

Look for concrete security issues, including but not limited to:
- Authentication or authorization bypasses.
- Trust boundary mistakes and missing validation.
- Injection risks, including command, query, template, path, and configuration injection.
- Unsafe file/path handling, path traversal, symlink issues, and insecure temporary files.
- Secret exposure in code, logs, errors, configuration, client responses, or generated artifacts.
- Unsafe deserialization, parsing, decoding, or format handling.
- SSRF, open redirects, unsafe URL handling, and overly broad cross-origin behavior.
- Cryptography misuse, weak randomness, token/session mistakes, and insecure identifiers.
- Sensitive data leaks through logs, telemetry, cache, persistence, or responses.
- Race conditions or concurrency bugs with security impact.
- Memory, lifetime, bounds, ownership, or resource handling issues when relevant to the language or runtime.
- Dependency or configuration risks when visible from the reviewed code.
- Any other concrete security risk relevant to the code.

Finding standards:
- Report only plausible security impacts supported by the code, data flow, or configuration.
- Include the file path and line or symbol when possible.
- Explain the affected asset or trust boundary, why it matters, and the trigger or attack condition.
- Distinguish confirmed vulnerabilities from risks, assumptions, or hardening opportunities.
- Group repeated root causes into one finding.
- Tie mitigations to a concrete attack path or exposure. Exclude praise, clean-code summaries, and repository discovery notes.

Report format:
- Number findings consecutively across the report.
- Include file paths and why each issue matters.
- If a section has no findings, write `None`.

## High risk

- Issues that could plausibly lead to compromise, data exposure, privilege escalation, code execution, or serious authorization bypass.

## Medium risk

- Issues that are security-relevant but require limited conditions, reduce defense in depth, or could become serious with nearby changes.

## Low risk / hardening

- Only include actionable hardening suggestions. Avoid generic best practices.

Extra focus: $ARGUMENTS
