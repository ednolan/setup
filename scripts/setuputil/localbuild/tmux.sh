#!/usr/bin/env bash

# adapted from https://bogdanvlviv.com/posts/tmux/how-to-install-the-latest-tmux-on-ubuntu-16_04.html

if [[ -d ~/localbuild/tmux ]] ; then
    rm -rf ~/localbuild/tmux
fi
mkdir -p ~/localbuild/tmux

git clone https://github.com/tmux/tmux.git ~/localbuild/tmux/tmux

cd ~/localbuild/tmux/tmux

git checkout cc117b5048f77a4842820f8ebbe3a86e5c077224

sh autogen.sh

./configure --prefix=$(realpath ~/localbuild/tmux) CFLAGS="-g"

make -j8 && make install

if [[ -d ~/.tmux/plugins/tpm ]] ; then
    rm -rf ~/.tmux/plugins/tpm
fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
