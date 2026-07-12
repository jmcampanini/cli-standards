# CLI Standards

Concise standards and known-good patterns for Go CLIs.

This repository is a living document. It has no standards release process,
version matrix, or registry of adopting repositories.


## How to use it

1. Read the standards that apply to the CLI.
2. Copy useful checklists or patterns into the repository when local ownership
   makes maintenance clearer.
3. Reference the applicable standard ID from copied material or implementation
   work.
4. File unintended drift in the affected CLI repository.
5. Mark intentional drift next to the code or configuration:

   `cli-standards: exception CLI-AREA-NNN - concise reason`

If the standard itself is wrong, change this repository. If one CLI is wrong,
change that CLI.


## Principles

- Prefer simple local code over premature shared infrastructure.
- Standards describe outcomes and verification, not identical implementations.
- Human-readable text is the source of truth.
- Group issues by coherent change and reuse existing issues when practical.
- Add process only after a demonstrated need.


## Catalog

- `standards/repository-layout.md`
- `standards/command-contracts.md`
- `standards/configuration.md`
- `standards/terminal-output.md`
- `standards/go-toolchain.md`
- `standards/build-and-quality.md`
- `standards/github-security.md`
- `standards/release-distribution.md`
- `standards/documentation.md`
- `standards/shared-components.md`
- `patterns/simple-cli.md`
- `patterns/configured-cli.md`
- `patterns/interactive-cli.md`
- `checklists/repository-review.md`
- `examples/workflows/update-go.yml`
- `examples/build/Makefile`
- `examples/build/.golangci.yml`
