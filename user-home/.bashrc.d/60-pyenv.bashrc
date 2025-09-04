#!/usr/bin/env bash

export PYENV_ROOT="$(pyenv root)"

PATH="$PATH:$PYENV_ROOT/shims"
PATH="$PATH:$PYENV_ROOT/bin"
export PATH
