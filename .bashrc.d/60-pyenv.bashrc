#!/usr/bin/env bash

export PYENV_ROOT="$HOME/.pyenv"

PATH="$PATH:$(pyenv root)/shims"
PATH="$PATH:$PYENV_ROOT/bin"
export PATH="$PATH:$HOME/.local/bin"
