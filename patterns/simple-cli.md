# Pattern: simple CLI

Use this pattern for a focused CLI with no configuration files and no full-screen terminal UI.


## Apply

- repository layout
- command contracts
- terminal output
- Go toolchain
- build and quality
- GitHub security
- GitHub pull requests
- HEAD-only distribution
- documentation


## Do not add by default

- configuration files
- profile support
- provenance reporting
- theme configuration
- a shared runtime framework


## Known-good shape

- root `main.go`
- commands in `cmd/<command>.go`
- domain behavior under `internal/`
- plain stdout payloads and stderr diagnostics
- destination-aware color only where it improves human output
- one authoritative `make check`

The absence of configuration is a valid design, not missing compliance.
