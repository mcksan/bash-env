#!/usr/bin/env bash

[[ "$OSTYPE" != "darwin"* ]] && return

export JAVA_HOME="/Library/Java/JavaVirtualMachines/graalvm-community-openjdk-17.0.9+9.1/Contents/Home"

PATH="$PATH:$JAVA_HOME/bin"

# OpenJDK
openjdk_prefix="$(brew --prefix openjdk)"
export PATH="$PATH:$openjdk_prefix/bin"
export CPPFLAGS+=" -I$openjdk_prefix/include"
