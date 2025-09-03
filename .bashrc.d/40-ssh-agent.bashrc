#!/usr/bin/env bash

## Do not run this on MacOS
[[ "$OSTYPE" == "darwin"* ]] && return

## https://wiki.archlinux.org/title/SSH_keys#ssh-agent
ssh_env_file="$XDG_RUNTIME_DIR/ssh-agent.env"
if ! pgrep -u "$USER" ssh-agent > /dev/null ; then
    ssh-agent -t 30m > "$ssh_env_file"
fi

if [ ! -f "$SSH_AUTH_SOCK" ]; then
    source "$ssh_env_file" > /dev/null
fi
