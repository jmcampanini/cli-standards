# Go toolchain


## CLI-GO-001: supported version

The current patched Go release is the minimum supported version.

Use `go.mod` as the version source for local builds and CI.


## CLI-GO-002: automated updates

Use a scheduled GitHub Actions workflow to:

1. run `go get go@latest`
2. run `go mod tidy`
3. run the repository's complete verification target
4. open or refresh one pull request

Never push a toolchain update directly to `main`.

Dependabot continues to update Go modules and GitHub Actions. Dependabot does not own the `go` or `toolchain` directive.

Start with [`examples/workflows/update-go.yml`](../examples/workflows/update-go.yml). The example uses a fine-grained `GO_UPDATE_TOKEN` limited to contents and pull requests for the adopting repository. Using a separate token allows the pull request to trigger the repository's normal required workflows.


## CLI-GO-003: workflow permissions

Default the workflow to read-only permissions. Expose credentials with contents and pull-request write access only to the PR creation step.

Pin Actions to full commit SHAs.
