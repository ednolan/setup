#!/bin/bash

declare script_dir=$(dirname $BASH_SOURCE)

find $script_dir/.. -name '*.in' | xargs -n1 emojisplit --split
