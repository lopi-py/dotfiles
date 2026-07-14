---
description: Implement behavior with a strict red-green-refactor loop
argument-hint: "<behavior or change>"
---
Implement this behavior with test-driven development:

````text
$ARGUMENTS
````

For each vertical slice:

1. Inspect the public interface, relevant code, existing test patterns, and current test results; separate target failures from unrelated ones.
2. Add or identify one focused test for observable behavior or a meaningful regression risk.
3. Run it before production changes. Confirm red proves the intended gap, not a setup error; if green, determine whether the behavior exists or the test is insufficient. Never force red.
4. Make the smallest production change that passes the test, then rerun it to green.
5. Refactor code and tests only while green, then run focused surrounding checks.

Repeat only for distinct behavior or an important edge case. Prefer real code paths and follow project testing patterns. When needed, mock or fake external or impractical boundaries such as network, time, filesystem, subprocesses, or third-party services.

Do not duplicate cases only for coverage or expose internals solely for testing. Never delete, disable, or weaken tests to reach green. If no meaningful automated test is feasible, use an established project validation method when clear; otherwise ask one blocking question before editing production code.

Report only cycles that actually ran.

## TDD cycles

List each test, its observed red result, and the change that made it green.
