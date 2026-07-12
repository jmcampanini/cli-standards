# Shared components

## CLI-SHARED-001: extraction threshold

Share implementation only when behavior is repeated, stable, nontrivial, and
cheaper to coordinate centrally than locally.

A common policy does not require a common package.

## CLI-SHARED-002: config reporting

Build shared configreporter composition and redaction primitives in
go-config-loader.

The shared API owns generic formatting, provenance rows, and redaction hooks.
The application owns derived effective values and decides which fields are
sensitive.

Design the API in an implementation issue before coding it.

## CLI-SHARED-003: local implementation defaults

Keep application themes, Cobra command wiring, executable layout, and domain
behavior local unless repeated evidence supports extraction.

## CLI-SHARED-004: shared infrastructure

Store concise standards, checklists, and known-good patterns in this repository.
Repositories copy material when local ownership is useful and reference the
source standard.

Do not introduce reusable workflows or validators until observed drift shows a
need.
