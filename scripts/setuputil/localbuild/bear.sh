#!/bin/bash

set -ex

if [[ -d ~/localbuild/bear ]] ; then
    rm -rf ~/localbuild/bear
fi
mkdir -p ~/localbuild/bear
git clone https://github.com/rizsotto/Bear.git ~/localbuild/bear/bear
cd ~/localbuild/bear/bear
git checkout v2.4.3
# hack: bash completion doesn't respect CMAKE_INSTALL_PREFIX
sed -i '/add_subdirectory(shell-completion)/d' ~/localbuild/bear/bear/CMakeLists.txt
cmake -DCMAKE_INSTALL_PREFIX=~/localbuild/bear .
make -j$(nproc)
make install
