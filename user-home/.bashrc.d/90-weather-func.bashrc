#!/usr/bin/env bash

function weather() {
    args="$(echo "$@" | xargs | tr ' ' '-')"
    curl -L "http://wttr.in/${args}"
}
