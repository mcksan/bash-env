#!/usr/bin/env bash

micro="$(type -P micro)"
export VISUAL="$micro"
export EDITOR="$micro"
export PAGER="$(type -P less)"
export SUDO_EDITOR="$micro"
