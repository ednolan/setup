#!/bin/bash

# Usage: ./setup-user

# dotfiles
cat ~/sync/setup/linux-homedir/.bashrc-suffix >> ~/.bashrc
cp ~/sync/setup/linux-homedir/.gitconfig ~
cp ~/sync/setup/linux-homedir/.rdmrc ~
cp ~/sync/setup/linux-homedir/.tmux.conf ~

# SSH and git
ssh-keygen -t rsa -C 'eddiejnolan@gmail.com'
git config --global user.name 'Edward Nolan'
git config --global user.email 'eddiejnolan@gmail.com'

# Opam
yes | opam init
opam switch 4.07.0
eval `opam config env`

# Semio
opam install tuareg merlin ocp-indent menhir ppx_sexp_conv ppx_compare ppx_custom_printf ppx_enumerate core ocamlgraph dune
