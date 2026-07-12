# Documentation


## CLI-DOCS-001: README baseline

Document purpose, HEAD installation and upgrade, representative commands, external prerequisites, and where configuration is discovered.

Keep examples executable against the current CLI.


## CLI-DOCS-002: configuration

Document precedence, environment variables, flags, effective values, profiles, and secret redaction.

Show how to inspect effective configuration and opt into provenance.


## CLI-DOCS-003: safety

Describe destructive operations and important filesystem behavior before the user runs them. Help text and embedded docs must agree with runtime behavior.


## CLI-DOCS-004: automation and agents

Make noninteractive behavior, output streams, exit status, and machine-readable formats discoverable from help or repository documentation.


## CLI-DOCS-005: standards references

Reference applicable standard IDs from copied content and intentional exception annotations. Do not maintain a central list of adopting repositories.
