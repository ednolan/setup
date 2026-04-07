#!/usr/bin/env bash

set -ex

if [[ -d ~/localbuild/pass ]] ; then
    rm -rf ~/localbuild/pass
fi
mkdir -p ~/localbuild/pass

git clone https://git.zx2c4.com/password-store ~/localbuild/pass/pass

cd ~/localbuild/pass/pass
mkdir -p ~/localbuild/pass/prefix

git checkout 1.7.4

make PREFIX=$(realpath ~/localbuild/pass/prefix) install
