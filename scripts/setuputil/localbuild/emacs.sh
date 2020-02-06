#!/bin/bash
set -ex
if [[ -d ~/localbuild/emacs ]] ; then
    rm -rf ~/localbuild/emacs
fi
mkdir -p ~/localbuild/emacs
cd ~/localbuild/emacs
wget http://ftp.gnu.org/gnu/emacs/emacs-26.3.tar.xz
tar xf emacs-26.3.tar.xz
cd emacs-26.3
./configure --prefix ~/localbuild/emacs #--with-x-toolkit=no
make -j$(nproc)
make install
