#!/usr/bin/env bash

set -euo pipefail

if [[ -d ~/localbuild/cmake ]] ; then
    rm -rf ~/localbuild/cmake
fi
mkdir -p ~/localbuild/cmake

git clone https://gitlab.kitware.com/cmake/cmake.git ~/localbuild/cmake/cmake

cd ~/localbuild/cmake/cmake

git checkout v3.31.0

./bootstrap --prefix=$HOME/localbuild/cmake
make -j$(nproc)
make install
