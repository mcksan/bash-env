#!/usr/bin/env bash

PKG_CONFIG_PATH="$(pkg-config --variable pc_path pkg-config)"
PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$(brew --prefix openssl)/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$(brew --prefix libpq)/lib/pkgconfig"
