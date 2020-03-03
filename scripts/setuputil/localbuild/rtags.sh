#!/bin/bash

set -ex

if [[ -d ~/localbuild/rtags ]] ; then
    rm -rf ~/localbuild/rtags
fi
mkdir -p ~/localbuild/rtags

git clone --recursive https://github.com/Andersbakken/rtags.git ~/localbuild/rtags/rtags

cd ~/localbuild/rtags/rtags

git checkout v2.38

cmake -DCMAKE_INSTALL_PREFIX=~/localbuild/rtags .
make -j8
make install
