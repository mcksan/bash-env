#!/usr/bin/env bash

## MacOS does not follow XDG specifications
## These are equivalents
### XDG_RUNTIME_DIR: Even though this is optional, I tend to use it for ssh-agent
if [[ "$OSTYPE" == "darwin"* ]]; then
    export XDG_CONFIG_HOME="$HOME/Library/Preferences"
    export XDG_CACHE_HOME="$HOME/Library/Caches"
    export XDG_DATA_HOME="$HOME/Library/Application Support"
    unset XDG_STATE_HOME
    export XDG_RUNTIME_DIR="$TMPDIR"
else
    export XDG_CONFIG_HOME="$HOME/.config"
    export XDG_CACHE_HOME="$HOME/.cache"
    export XDG_DATA_HOME="$HOME/.local/share"
    export XDG_STATE_HOME="$HOME/.local/state"
    export XDG_RUNTIME_DIR="/run/user/$UID"
fi

export XDG_BIN_HOME="$HOME/.local/bin"  # non-standard
export PATH="$XDG_BIN_HOME:$PATH"
