# Pattern: interactive CLI

Use this pattern for a full-screen TUI, prompt flow, or command that owns terminal state.


## Capability checks

Check the capability actually required:

- color profile
- stdout TTY
- stderr TTY
- cursor control
- external program availability

Do not treat those capabilities as interchangeable.


## Noninteractive behavior

Keep help, version, configuration inspection, and documentation usable without an interactive terminal when practical.

Interactive-only commands fail with a concise explanation and recovery path.


## Styling

Follow `CLI-OUTPUT-001` through `CLI-OUTPUT-005`. Machine-readable output stays plain. Command-specific exceptions are documented and annotated.


## External prerequisites

Document required programs. Install them in CI and fail required end-to-end verification when they are absent.

Cmdk treats tmux as a documented external prerequisite and must exercise it in end-to-end CI.
