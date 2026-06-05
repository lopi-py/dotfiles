---
description: Review relevant code for concrete security risks
argument-hint: "[focus]"
---
Review the relevant code for concrete security risks.

Scope:
- Determine the relevant code internally. Use git diffs when available, otherwise review the files changed or discussed in this session.
- Do not report repository discovery steps, whether git was available, or which diff source was used unless it affects the review.
- Focus on risks that are plausible from the actual code, data flow, or configuration.
- Do not produce generic security checklists.

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

Do not limit findings to the categories above. Prioritize concrete, code-specific risks over checklist coverage.

Report format:

## High risk

- Issues that could plausibly lead to compromise, data exposure, privilege escalation, code execution, or serious authorization bypass.
- Include file paths, the risky behavior, and why it matters.
- If none, write `None`.

## Medium risk

- Issues that are security-relevant but require limited conditions, reduce defense in depth, or could become serious with nearby changes.
- Include file paths and why it matters.
- If none, write `None`.

## Low risk / hardening

- Only include actionable hardening suggestions. Avoid generic best practices.
- If none, write `None`.

Extra focus: $ARGUMENTS
