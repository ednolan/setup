#!/bin/bash

# Usage: ./install-software

## Desktop environment/theme

# Add ppa for cinnamon and install it
apt-add-repository -y ppa:embrosyn/cinnamon
apt update
apt install -y cinnamon blueberry

# Adwaita theme
apt install -y adwaita-icon-theme adwaita-icon-theme-full

## Application software

# Audio
apt install -y audacity pianobooster

# Utilities
apt install -y curl gnome-tweak-tool htop k4dirstat network-manager-openvpn-gnome openssh-server openvpn systemd-coredump tree xclip xsel

# Video games
apt install -y pioneers

## Programming languages/tools

# C++
apt install -y clang libclang-dev libgflags-dev libboost-all-dev

# CMake
apt install -y cmake

# Git

# new git for 16.04
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install -y git

# Go
apt install -y golang-go

# Meson
apt install -y meson

# Node.js
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt install -y nodejs

# OCaml
apt install -y opam m4

# Python
apt install -y python-pip python3-tk

# Tex
apt install -y texlive latexmk texlive-xetex

## Projects and libraries

# CD player
apt install -y libasound-dev libfftw3-dev

# Desmond
apt install -y libgtkmm-3.0-dev libsndfile1-dev uuid-dev

# Emacs Dev
apt install -y libxpm-dev libjpeg-dev libgif-dev libtiff-dev gnutls-dev
