#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    export ANDROID_HOME="$HOME/.android"
else
    export ANDROID_HOME="/opt/android-sdk"
fi
export ANDROID_USER_HOME="$HOME/.android"
export ANDROID_EMULATOR_HOME="$ANDROID_USER_HOME/emulator"
export ANDROID_AVD_HOME="$ANDROID_USER_HOME/avd"

## polyfils for deprecated env vars
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export ANDROID_SDK_HOME="$ANDROID_USER_HOME"

PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
PATH="$PATH:$ANDROID_HOME/tools"
PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH
