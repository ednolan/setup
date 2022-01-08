#!/usr/bin/env bash

declare script_dir=$(dirname $BASH_SOURCE)

declare infiles_dir=$(realpath "$script_dir/..")

find "$infiles_dir" -name '*.in' | xargs -n1 emojisplit --split
