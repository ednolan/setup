#!/usr/bin/env bash

export XDG_CACHE_HOME=/tmp
exec clangd "$@"
