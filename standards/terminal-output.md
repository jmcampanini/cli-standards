# Terminal output


## CLI-OUTPUT-001: color modes

Styled commands expose `--color=auto|always|never` when a color override is useful. Require an explicit value; bare `--color` is not a fleet contract.

Precedence from lowest to highest:

1. destination-aware automatic detection
2. nonempty `NO_COLOR`
3. explicit `--color` flag

Do not support `FORCE_COLOR`, `CLICOLOR`, or `CLICOLOR_FORCE` until a concrete interoperability need exists.


## CLI-OUTPUT-002: automatic detection

Evaluate the stream that receives the output. Detect stdout and stderr independently.

In `auto`, disable color when the destination is not a terminal or when `TERM=dumb`.


## CLI-OUTPUT-003: machine output

Machine-readable formats never contain ANSI escapes, terminal hyperlinks, cursor control, or transient progress, even when color is forced.


## CLI-OUTPUT-004: transient and interactive behavior

Transient progress and cursor control require an appropriate TTY. Interactive-only commands fail with actionable guidance when their terminal contract is not available.


## CLI-OUTPUT-005: exceptions

Commands may define a narrower contract when needed. Keep redirected output clean by default and mark intentional drift with this standard ID and a reason.
