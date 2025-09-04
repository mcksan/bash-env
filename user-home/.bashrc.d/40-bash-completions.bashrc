#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

completions=(
    "$HOMEBREW_PREFIX/etc/bash_completion"
)

for file in "${completions[@]}"; do
    [[ -r "$file" ]] && source "$file"
done
