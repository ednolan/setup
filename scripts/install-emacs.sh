#!/bin/bash
set -ex
# sudo apt install build-essential pkg-config gnutls-dev libncurses-dev
mkdir -p ~/emacsstuff
cd ~/emacsstuff
wget http://ftp.gnu.org/gnu/emacs/emacs-26.1.tar.xz
tar xf emacs-26.1.tar.xz
cd emacs-26.1
./configure --prefix ~/emacsstuff
make
make install
