#!/usr/bin/env bash

## Switch the NVM value to 0 to disable `nvm`
export NVM=1
export NVM_DIR="$HOME/.nvm"

[[ "$NVM" -ne 1 ]] && return

if [[ "$OSTYPE" == "darwin"* ]]; then
    init_file="$(brew --prefix nvm)/nvm.sh"
else
    init_file="/usr/share/nvm/init-nvm.sh"
fi

source "$init_file"
