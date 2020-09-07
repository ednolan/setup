#!/bin/bash
set -ex
if [[ -d ~/localbuild/emacs ]] ; then
    rm -rf ~/localbuild/emacs
fi
mkdir -p ~/localbuild/emacs
cd ~/localbuild/emacs
wget http://ftp.gnu.org/gnu/emacs/emacs-27.1.tar.xz
tar xf emacs-27.1.tar.xz
cd emacs-27.1
./configure --prefix ~/localbuild/emacs --with-x-toolkit=no
make -j8
make install
