#!/usr/bin/env bash

declare emoji=$1
if [[ ! -d ~/.emacs.d ]] ; then
    git clone git@github.com:ednolan/emacs-init.git ~/.emacs.d
else
    git -C ~/.emacs.d pull
fi
cp ~/.emacs.d/init.el.$emoji ~/.emacs.d/init.el
