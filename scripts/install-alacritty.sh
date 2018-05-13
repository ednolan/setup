#!/bin/bash

sudo apt install -y cmake libfreetype6-dev libfontconfig1-dev xclip
mkdir -p ~/alacrittystuff
cd ~/alacrittystuff
git clone https://github.com/jwilm/alacritty.git
cd alacritty
rustup override set stable
rustup update stable
mkdir -p ~/.config/alacritty
cp ./alacritty.yml ~/.config/alacritty
cargo build --release
