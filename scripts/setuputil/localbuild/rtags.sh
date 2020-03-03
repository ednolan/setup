#!/bin/bash

set -ex

if [[ -d ~/localbuild/rtags ]] ; then
    rm -rf ~/localbuild/rtags
fi
mkdir -p ~/localbuild/rtags
cd ~/localbuild/rtags
git clone --recursive https://github.com/Andersbakken/rtags.git
cd rtags
cmake -DCMAKE_INSTALL_PREFIX=~/localbuild/rtags .
make -j8
make install
