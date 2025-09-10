#!/usr/bin/env bash

[[ $- != *i* ]] && return

lsbin="$(type -P ls)"
[[ "$OSTYPE" == "darwin"* ]] && lsbin="/opt/homebrew/opt/coreutils/libexec/gnubin/ls"

for file in $($lsbin -1 --sort name "$HOME/.bashrc.d/"*".bashrc"); do
    [[ -r "$file" ]] && source "$file"
done
