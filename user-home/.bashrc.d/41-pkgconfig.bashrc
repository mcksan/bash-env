#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

export PKG_CONFIG_PATH="$(pkg-config --variable pc_path pkg-config)"
