#!/usr/bin/env bash

set -euo pipefail

declare script_dir=$(dirname $BASH_SOURCE)

declare emoji=$1
[[ -n $emoji ]] || exit 1

"$script_dir/../../emojissh/public_keys_for.sh" "$emoji" > ~/.ssh/authorized_keys
