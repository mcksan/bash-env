#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

export PATH="$PATH:$(brew --prefix m4)/bin"
