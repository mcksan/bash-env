#!/usr/bin/env bash

export JAVA_HOME="/Library/Java/JavaVirtualMachines/graalvm-community-openjdk-17.0.9+9.1/Contents/Home"

export PATH="$PATH:$JAVA_HOME/bin"

# OpenJDK
export PATH="$PATH:$HOMEBREW_PREFIX/opt/openjdk/bin"
export CPPFLAGS+=" -I/opt/homebrew/opt/openjdk/include"
