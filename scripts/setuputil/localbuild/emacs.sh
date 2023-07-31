#!/usr/bin/env bash
set -ex
if [[ -d ~/localbuild/emacs ]] ; then
    rm -rf ~/localbuild/emacs
fi
mkdir -p ~/localbuild/emacs
cd ~/localbuild/emacs
wget https://ftpmirror.gnu.org/emacs/emacs-29.1.tar.xz
tar xf emacs-29.1.tar.xz
cd emacs-29.1
./configure \
    --prefix ~/localbuild/emacs \
    --with-x-toolkit=no \
    --with-native-compilation=aot \
    --with-xpm=ifavailable \
    --with-jpeg=ifavailable \
    --with-png=ifavailable \
    --with-gif=ifavailable \
    --with-tiff=ifavailable \
    --with-gnutls=ifavailable
make -j32
make install
