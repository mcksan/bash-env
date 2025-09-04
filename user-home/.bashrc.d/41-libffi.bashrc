#!/usr/bin/env bash

## The LibFFI compilation issues seem to be solved
## but if they return, uncomment the next lines

[[ "$OSTYPE" != "darwin"* ]] && return

# libffi_prefix="$(brew --prefix libffi)"

# export CPPFLAGS+=" -I$libffi_prefix/include"
# export LDFLAGS="-L$libffi_prefix/lib"
