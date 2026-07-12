# Build and quality


## CLI-QUALITY-001: authoritative verification

`make check` is the complete local verification contract and the required CI check.

It includes formatting verification, linting, tests, race testing where supported, builds, and repository-specific integration or end-to-end tests.

Target composition may differ, but `make check` must not silently omit a required capability.

Start with [`examples/build/Makefile`](../examples/build/Makefile) and [`examples/build/.golangci.yml`](../examples/build/.golangci.yml). Declare `golangci-lint` and `govulncheck` as versioned Go tools in `go.mod` so the Makefile does not depend on untracked global installations.


## CLI-QUALITY-002: read-only checks

Verification must not rewrite source, update dependencies, or generate tracked files unexpectedly.

Provide separate write-mode formatting or generation targets when needed.


## CLI-QUALITY-003: prerequisites

Install required test prerequisites in CI. A required suite fails when its core prerequisite is missing instead of reporting a successful skip.

Cmdk end-to-end verification requires tmux.


## CLI-QUALITY-004: vulnerability checks

Run govulncheck on every Go repository. Promote it to a required PR check using per-repository maintainer judgment.

Keep the check name stable before adding it to a ruleset.
