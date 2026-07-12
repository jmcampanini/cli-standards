# Repository layout


## CLI-LAYOUT-001: executable entrypoint

A CLI has one root `main.go` executable entrypoint.

Do not use `cmd/<binary>/main.go`.

`main.go` owns process exit and delegates command construction and execution.


## CLI-LAYOUT-002: Cobra commands

Place Cobra command implementations in `cmd/<command>.go`.

Prefer one command per file. Keep tightly related helpers beside that command until they become a reusable package.


## CLI-LAYOUT-003: private implementation

Keep application-specific implementation under `internal/` when it is not a published package contract.

Do not extract a package merely to make directory trees look alike.


## CLI-LAYOUT-004: justified differences

Different package depth is acceptable when project complexity differs. Executable layout is not.

Mark an intentional exception with the standard ID and a concise reason.
