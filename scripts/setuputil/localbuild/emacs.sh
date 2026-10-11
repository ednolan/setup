#!/usr/bin/env bash
set -ex

# override with e.g. EMACS_VERSION=30.2 to build an older release
declare emacs_version=${EMACS_VERSION:-31.1}

if [[ -d ~/localbuild/emacs ]] ; then
    rm -rf ~/localbuild/emacs
fi
mkdir -p ~/localbuild/emacs
cd ~/localbuild/emacs
wget https://ftpmirror.gnu.org/emacs/emacs-$emacs_version.tar.xz
tar xf emacs-$emacs_version.tar.xz
cd emacs-$emacs_version

    # --with-native-compilation=aot \

# tree-sitter is mandatory: without it every *-ts-mode in init.el is broken
./configure \
    --prefix ~/localbuild/emacs \
    --with-x-toolkit=no \
    --with-xpm=ifavailable \
    --with-jpeg=ifavailable \
    --with-png=ifavailable \
    --with-gif=ifavailable \
    --with-tiff=ifavailable \
    --with-gnutls=yes \
    --with-tree-sitter=yes
make -j$(nproc)
make install
