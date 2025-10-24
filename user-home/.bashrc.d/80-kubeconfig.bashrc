#!/usr/bin/env bash

if docker stats --no-stream > /dev/null 2>&1 ; then
    KUBECONFIG="$(k3d kubeconfig merge)"
fi
export KUBECONFIG
