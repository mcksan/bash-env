#!/usr/bin/env bash

export TZ="America/Sao_Paulo"
alias node="node --harmony"

[[ "$OSTYPE" != "darwin"* ]] && return
export PATH="$PATH:$(brew --prefix node@20)/bin"
