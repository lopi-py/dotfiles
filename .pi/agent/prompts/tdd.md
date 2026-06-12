---
description: Implement a behavior with a behavior-first TDD loop
argument-hint: "<behavior or change>"
---
Implement the requested behavior with a strict red-green-refactor loop, testing only behavior that matters.

Behavior or change: $ARGUMENTS

Goal:
- Verify observable behavior through public interfaces, not private methods, internal structure, or mocked collaborators.
- Use the smallest useful set of tests for real behavior and meaningful regression risk.
- Prefer real code paths and integration-style tests when practical.

Rules:
- Do not edit production code until a focused, relevant test fails for the intended reason.
- Add focused automated tests for behavior, public contracts, bugs, or important edge cases when they add confidence. If that would require brittle assertions, ask about manual or project-approved verification before editing production code.
- Work in vertical slices: one relevant test, one minimal implementation, then repeat. Do not write all tests first.
- Mock only unavoidable external boundaries, for example network, time, filesystem, subprocesses, payment providers, or slow third-party services.
- Make the smallest production change that passes the current test. Do not add speculative behavior.
- Stop when the requested behavior and important edge cases are covered.
- Refactor only after tests are green, rerun focused tests, and report only verification commands actually run.

Avoid:
- Tests written only for coverage, duplicated permutations, implementation plans, incidental structure, helper extraction, or framework-specific details.
- Mock assertions as the primary proof when an observable result or boundary contract can be tested instead.
- Adding production methods, flags, or APIs only for tests.

Workflow:
1. Inspect relevant code, public interfaces, existing test patterns, and project vocabulary.
2. State the intended behavior and the first test to add or change.
3. Add or change one focused test case, plus only the supporting test setup it requires.
4. Run the focused test and confirm it fails for the expected behavior gap.
5. Implement the smallest production change to pass that test.
6. Run the focused test and confirm it passes.
7. Repeat for the next distinct behavior or important edge case only after the current slice is green.
8. Run relevant surrounding tests or checks before finishing.

Per-cycle checklist:
- Test protects meaningful behavior or regression risk.
- Test describes one behavior, uses project vocabulary, and uses the public interface.
- Test would survive an internal refactor and failed for the expected reason before implementation.
- Production code is minimal for this test.

Report format:

## TDD cycles

- Briefly list each red-green cycle completed.

## Verification

- Summarize the focused and relevant checks run, with pass/fail status. Keep it brief.

## Notes

- Mention ambiguity, skipped automation, unavoidable mocks, or follow-up risks.
- If none, write `None`.
