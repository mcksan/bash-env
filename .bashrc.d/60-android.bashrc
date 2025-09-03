#!/usr/bin/env bash

export ANDROID_HOME="/opt/android-sdk"
export ANDROID_SDK_HOME="/opt/android-sdk"
export ANDROID_SDK_HOME="$HOME/.android"
export ANDROID_EMULATOR_HOME="$ANDROID_SDK_HOME/emulator"
export ANDROID_AVD_HOME="$ANDROID_SDK_HOME/avd"

PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
