#!/bin/bash

set -ex

mkdir -p ~/rtagsstuff
cd ~/rtagsstuff
git clone --recursive https://github.com/Andersbakken/rtags.git
cd rtags
cmake -DCMAKE_INSTALL_PREFIX:PATH=~/rtagsstuff .
make
