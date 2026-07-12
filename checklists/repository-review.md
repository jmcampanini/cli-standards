# Repository review checklist

Use this checklist ad hoc or whenever a repository changes materially.


## Review

- [ ] Identify which standards apply.
- [ ] Compare current code, tests, docs, workflows, and live GitHub settings.
- [ ] Treat missing evidence as unknown, not compliant or disabled.
- [ ] Confirm intentional differences have a nearby exception annotation.
- [ ] Confirm copied standards content still references its standard ID.
- [ ] Confirm root `AGENTS.md` exists and contains shared agent guidance.
- [ ] Confirm root `CLAUDE.md` exists, its first line is exactly `@AGENTS.md`, and any remaining content is only Claude-specific guidance.


## Act

- [ ] Group related drift into one coherent change when practical.
- [ ] Reuse or amend an existing issue when it already covers the work.
- [ ] File unintended drift in the affected repository.
- [ ] Change `cli-standards` only when the standard itself should change.
- [ ] Do not add the adopting repository to a central registry.


## Finish

- [ ] State how the result will be verified.
- [ ] Preserve justified exceptions.
- [ ] Keep the issue focused on what good looks like and getting there.
