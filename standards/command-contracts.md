# Command contracts


## CLI-CMD-001: command construction

Construct a fresh root command for each execution. Avoid process-global command state when practical.

The root `main.go` owns the final exit code.


## CLI-CMD-002: errors

Use `RunE` for command failures. Return actionable errors to the process boundary instead of printing and returning success.

Do not silently ignore positional arguments or unknown input.


## CLI-CMD-003: streams

Write command payloads to stdout.

Write diagnostics, warnings, and transient progress to stderr.

Help and version output follow Cobra conventions unless a documented contract requires otherwise.


## CLI-CMD-004: automation

Commands that can run non-interactively must not prompt unexpectedly. Document required external programs and interactive-only behavior.


## CLI-CMD-005: discoverability

Provide useful short help, examples for non-obvious commands, a consistent version string, and shell completion when the CLI has a meaningful interactive command surface.
