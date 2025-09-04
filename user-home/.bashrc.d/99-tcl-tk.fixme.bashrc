#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

## This is a fix for the Tcl/Tk v9 issue on `gitk` that is happening exclusively on MacOS
## The solution is to use v8
##
## JIC: for gitk to function properly, be sure to:
## - have tcl-tk v8 installed (`brew install tcl-tk@8`)
## - have tcl-tk v9 uninstalled (`brew uninstall tcl-tk --ignore-dependencies`)
## - have tcl-tk symlinked to the usual _latest_ version spot
##   - `ln -s $(brew --prefix tcl-tk@8) $HOMEBREW/opt/tcl-tk`
export PATH="$(brew --prefix tcl-tk@8)/bin:$PATH"
