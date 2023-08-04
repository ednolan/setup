#!/usr/bin/env bash

set -ex

if [[ -d ~/localbuild/fastmod ]] ; then
    rm -rf ~/localbuild/fastmod
fi
mkdir -p ~/localbuild/fastmod
cd ~/localbuild/fastmod
git clone https://github.com/facebookincubator/fastmod.git
cd fastmod
cargo build --release
