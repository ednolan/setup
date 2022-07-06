#!/usr/bin/env bash

declare emoji=$1
if [[ ! -d ~/.emacs.d ]] ; then
    git clone git@github.com:ednolan/emacs-init.git ~/.emacs.d
else
    git -C ~/.emacs.d pull
fi
git -C ~/.emacs.d submodule sync
git -C ~/.emacs.d submodule update --init
cp ~/.emacs.d/init.el.$emoji ~/.emacs.d/init.el
