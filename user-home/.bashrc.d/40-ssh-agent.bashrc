#!/usr/bin/env bash

ssh_env_file="$XDG_RUNTIME_DIR/ssh-agent.env"

if [[ "$OSTYPE" == "darwin"* ]]; then
    ## Either load (if exists) or generate file
    if [[ -r "$ssh_env_file" ]]; then
        source "$ssh_env_file" > /dev/null
    else
        export SSH_AGENT_PID="$(pgrep -u "$USER" -n ssh-agent)"
        echo "export SSH_AGENT_PID=$SSH_AGENT_PID" > "$ssh_env_file"
        echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> "$ssh_env_file"
    fi
    return
fi

## https://wiki.archlinux.org/title/SSH_keys#ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null ; then
    ssh-agent -t 1h > "$ssh_env_file"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$ssh_env_file" > /dev/null
fi
