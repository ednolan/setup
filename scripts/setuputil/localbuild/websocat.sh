#!/usr/bin/env bash

set -ex

if [[ -d ~/localbuild/websocat ]] ; then
    rm -rf ~/localbuild/websocat
fi
mkdir -p ~/localbuild/websocat
cd ~/localbuild/websocat
git clone https://github.com/vi/websocat.git
cd websocat
cargo build --release --features=ssl
