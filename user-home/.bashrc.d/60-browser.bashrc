#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    CHROMIUM_BROWSER_PATH="/Applications/Vivaldi.app/Contents/MacOS/Vivaldi"
else
    CHROMIUM_BROWSER_PATH="/usr/bin/vivaldi-stable"
fi
export CHROMIUM_BROWSER_PATH
export BROWSER="$CHROMIUM_BROWSER_PATH"

## Puppeteer
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH="$CHROMIUM_BROWSER_PATH"
