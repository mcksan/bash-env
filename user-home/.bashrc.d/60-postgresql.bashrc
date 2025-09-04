#!/usr/bin/env bash

libpq_prefix="$(brew --prefix libpq)"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$libpq_prefix/lib/pkgconfig"

PATH="$PATH:$libpq_prefix/bin"
PATH="$PATH:$(brew --prefix postgresql@14)/bin"
export PATH
