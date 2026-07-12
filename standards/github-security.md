# GitHub security


## CLI-SEC-001: default branch protection

Protect `main` with an active ruleset. Block force pushes and branch deletion.
Require the repository's stable `check` context.

Do not require a second maintainer or self-approval.


## CLI-SEC-002: Actions permissions and integrity

Set default Actions permissions to read-only. Grant write permissions only to
the job that needs them.

Pin third-party Actions to full commit SHAs and enforce the allowed-action or
SHA policy in repository settings.


## CLI-SEC-003: dependency automation

Configure Dependabot for Go modules and GitHub Actions. Use grouping and pull-
request limits that a solo maintainer can sustain.

Enable dependency graph, vulnerability alerts, and Dependabot security updates.


## CLI-SEC-004: security checks

Introduce Dependency Review and govulncheck first. Promote checks to required
status using per-repository maintainer judgment after representative runs.

Run CodeQL and observe its results before requiring it.


## CLI-SEC-005: recovery

If a required gate breaks, the sole maintainer may temporarily edit or disable
the ruleset, repair the gate, and restore protection.


## CLI-SEC-006: secrets and disclosure

Enable secret scanning and push protection where available.

Enable private vulnerability reporting and publish a concise `SECURITY.md` with
a private route and no response SLA.
