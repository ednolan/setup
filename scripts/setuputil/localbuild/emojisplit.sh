#!/usr/bin/env bash

set -euo pipefail
shopt -s inherit_errexit nullglob
export BASHOPTS

declare emojsplit_script_dir=$(realpath $(dirname "$BASH_SOURCE"))

function main() {
    mkdir -p "$HOME/sync/rust/"
    cd "$HOME/sync/rust/"
    [[ -d "$HOME/sync/rust/emojisplit" ]] || git clone git@github.com:ednolan/emojisplit.git
    cd emojisplit
    cargo build --release
}

[[ "${BASH_SOURCE[0]}" != "${0}" ]] || main "$@"
