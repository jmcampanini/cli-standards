# Agent instructions


## CLI-AGENTS-001: shared guidance

Every actively maintained Go CLI repository has a root `AGENTS.md`. Use that file for project-wide build, test, documentation, style, and safety guidance shared by coding agents.

Keep `AGENTS.md` as plain Markdown without a required heading structure. A nested `AGENTS.md` may add or override guidance for its subtree when a project needs more specific instructions.


## CLI-AGENTS-002: Claude Code bridge

Every actively maintained Go CLI repository has a root `CLAUDE.md` whose first line is exactly:

```text
@AGENTS.md
```

Only Claude Code-specific instructions may follow the import. When none are needed, the import is the complete file. Keep shared project guidance in `AGENTS.md` instead of duplicating it in `CLAUDE.md`.
