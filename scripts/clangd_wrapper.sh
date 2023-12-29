#!/usr/bin/env bash

export XDG_CACHE_HOME=/tmp/$(whoami)
exec clangd-17 "$@"
