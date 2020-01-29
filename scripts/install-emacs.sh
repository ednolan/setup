#!/bin/bash
set -ex
# sudo apt install build-essential pkg-config gnutls-dev libncurses-dev
# yum -y groupinstall "Development Tools"
# yum -y install gnutls-dev
mkdir -p ~/emacsstuff
cd ~/emacsstuff
wget http://ftp.gnu.org/gnu/emacs/emacs-26.3.tar.xz
tar xf emacs-26.3.tar.xz
cd emacs-26.3
./configure --prefix ~/emacsstuff
make -j$(nproc)
make install
