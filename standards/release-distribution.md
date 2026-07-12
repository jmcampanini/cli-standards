# Release and distribution


## CLI-RELEASE-001: distribution mode

The fleet is HEAD-only unless a repository explicitly adopts stable releases.

Do not publish empty release machinery or imply a stable channel that is not operated.


## CLI-RELEASE-002: version identity

Inject a useful version at build time. HEAD builds report commit-derived identity rather than a misleading stable version.


## CLI-RELEASE-003: Homebrew

A HEAD-only formula declares `head`, builds with the repository's supported Go flags, stamps version identity correctly, and includes a noninteractive functional test.

Document installation and upgrade with `--HEAD`.
