#!/usr/bin/env bash

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias df="df --human-readable"
[[ "$OSTYPE" == "darwin"* ]] || alias free="free --mebi"
alias cd..="cd .."
