#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$(brew --prefix openssl)/lib/pkgconfig"
