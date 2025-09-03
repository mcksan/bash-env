#!/usr/bin/env bash

export CHROMIUM_BROWSER_PATH="/Applications/Vivaldi.app/Contents/MacOS/Vivaldi"
export BROWSER="$CHROMIUM_BROWSER_PATH"

## Puppeteer
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH="$CHROMIUM_BROWSER_PATH"
