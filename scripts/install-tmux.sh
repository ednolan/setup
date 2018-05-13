#!/usr/bin/env bash

# adapted from https://bogdanvlviv.com/posts/tmux/how-to-install-the-latest-tmux-on-ubuntu-16_04.html

sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev

mkdir -p ~/tmuxstuff

git clone https://github.com/tmux/tmux.git ~/tmuxstuff/tmux

cd ~/tmuxstuff/tmux

git checkout 2.7

sh autogen.sh

./configure --prefix=/home/eddie/tmuxstuff/tmux

make && make install
