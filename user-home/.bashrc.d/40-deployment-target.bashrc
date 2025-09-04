#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

export MACOSX_DEPLOYMENT_TARGET="$(sw_vers --productVersion)"
export MACOS_DEPLOYMENT_TARGET="$MACOSX_DEPLOYMENT_TARGET"
