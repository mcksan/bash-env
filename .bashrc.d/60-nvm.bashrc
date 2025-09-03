#!/usr/bin/env bash

## Switch the NVM value to 0 to disable `nvm`
export NVM=1
export NVM_DIR="$HOME/.nvm"

[[ "$NVM" -eq 1 ]] && source "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
