#!/bin/bash

set -ex

mkdir -p ~/bearstuff
git clone https://github.com/rizsotto/Bear.git ~/bearstuff/bear
cd ~/bearstuff/bear
git checkout v2.4.3
cmake -DCMAKE_INSTALL_PREFIX=~/bearstuff .
make -j$(nproc)
make install
