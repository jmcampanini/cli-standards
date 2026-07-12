# Pattern: configured CLI

Use this pattern when a CLI loads configuration from files, environment, or flags.


## Load

1. define application defaults
2. discover optional conventional files
3. load files from low to high priority
4. load environment variables
5. load flags
6. derive and validate application-effective values

Use a required loader for an explicit `--config` path.


## Report

The default config command emits valid redirectable configuration and a concise section for application-effective values.

`--provenance` adds field-level source information without replacing the normal report.

Redact sensitive values before formatting either report.


## Profiles

Validate the final profile identifiers after all layers and before filesystem or ignore-rule use.


## Verification

Test every precedence layer, explicit missing files, optional discovery, round-trip output, effective values, provenance, and secret redaction.
