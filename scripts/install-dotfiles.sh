#!/bin/bash

# todo: emojisplit
# todo: suffix files

cp ~/sync/setup/linux-homedir/.gitconfig ~
cp ~/sync/setup/linux-homedir/.tmux.conf ~
mkdir -p ~/.config/alacritty
cp ~/sync/setup/linux-homedir/.config/alacritty/allacritty.yml ~/.config/alacritty/
cp -r ~/sync/setup/linux-homedir/util ~
