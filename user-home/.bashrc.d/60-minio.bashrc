#!/usr/bin/env bash

## Brew installs minio-cli as `mc`, while some linux distros as `mcli`
## This will alias `mcli` -> `mc` for consistency

mc_exists="$(type -P mc)"
if [[ -z "$mc_exists" ]] ; then
    mcli_exists="$(type -P mcli)"
    [[ -n "$mcli_exists" ]] && alias mc="mcli"
fi
