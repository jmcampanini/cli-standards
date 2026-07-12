# Configuration

## CLI-CONFIG-001: precedence

Use this precedence from lowest to highest:

1. application defaults
2. configuration files
3. environment variables
4. command-line flags

Use go-config-loader for layered loading and provenance.

## CLI-CONFIG-002: discovered and explicit files

Automatically discovered candidates may be optional.

A path explicitly supplied by a user, such as `--config`, is required and must
fail clearly when it cannot be loaded.

The exact optional-directory and relative `XDG_CONFIG_HOME` contract remains
open in go-config-loader issue #13. Document current behavior until that issue
is resolved.

## CLI-CONFIG-003: config reporting

The default config command prints valid, redirectable configuration plus
application-derived effective values.

Field-level provenance is additive and opt-in with `--provenance`.

## CLI-CONFIG-004: sensitive values

Classify sensitive fields before building shared report composition.

Redact secrets in config reports, provenance, diagnostics, and logs. Redaction
must happen before formatting.

## CLI-CONFIG-005: profiles

Validate effective profile identifiers after all configuration layers and
before using them in filenames, paths, ignore rules, or lookup keys.

Use one documented profile grammar per application.
