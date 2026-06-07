---
description: Implement a behavior with a behavior-first TDD loop
argument-hint: "<behavior or change>"
---
Implement the requested behavior with a strict red-green-refactor loop.

Behavior or change: $ARGUMENTS

Goal:
- Write tests that describe observable behavior through public interfaces.
- Prefer real code paths and integration-style tests when practical.
- Avoid tests coupled to private methods, internal structure, or mocked collaborators.

Rules:
- Do not edit production code until a focused test fails for the intended reason.
- Work in vertical slices: one test, one minimal implementation, then repeat.
- Do not write all tests first and then all implementation.
- Mock only unavoidable external boundaries, for example network, time, filesystem, subprocesses, payment providers, or slow third-party services.
- Make the smallest production change that passes the current test.
- Do not add speculative behavior for future tests.
- Refactor only after tests are green, then rerun the focused tests.
- Report only verification commands that actually ran.

Workflow:
1. Inspect relevant code, public interfaces, existing test patterns, and project vocabulary.
2. State the intended behavior and the first test to add or change.
3. Ask one clarifying question if the public interface or behavior priority is unclear.
4. Edit one test only.
5. Run the focused test and confirm it fails for the expected behavior gap.
6. Implement the smallest production change to pass that test.
7. Run the focused test and confirm it passes.
8. Repeat for the next behavior only after the current slice is green.
9. Run relevant surrounding tests or checks before finishing.

Per-cycle checklist:
- Test describes one behavior.
- Test name uses project vocabulary.
- Test uses the public interface.
- Test would survive an internal refactor.
- Test failed for the expected reason before implementation.
- Production code is minimal for this test.

Report format:

## TDD cycles

- Briefly list each red-green cycle completed.

## Verification

- Summarize the focused and relevant checks run, with pass/fail status. Keep it brief.

## Notes

- Mention ambiguity, skipped automation, unavoidable mocks, or follow-up risks.
- If none, write `None`.
