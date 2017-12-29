# hs-arrow

Haskell bindings for apache arrow.

## Design

The strategy is to use the C++ arrow API for I/O and reading arrow schemas but use native
haskell for processing arrow arrays.  The emphasis is on supporting reading arrow rather
than writing.
