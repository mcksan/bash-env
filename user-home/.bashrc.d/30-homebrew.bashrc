#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

eval "$(/opt/homebrew/bin/brew shellenv)"
