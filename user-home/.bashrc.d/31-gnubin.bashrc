#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

# coreutils
PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
# gnu-tar
PATH="$(brew --prefix gnu-tar)/libexec/gnubin:$PATH"

export PATH
