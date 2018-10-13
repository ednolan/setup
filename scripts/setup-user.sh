#!/bin/bash

# Usage: ./setup-user

# Modern mint theme
wget -O '/home/eddie/Downloads/Modern-Mint.zip' 'https://dl.opendesktop.org/api/files/downloadfile/id/1464717637/s/e7db10e2bb31bfa89830af2f9444a5d5/t/1525749347/u/334314/174945-Modern Mint.zip'
unzip '/home/eddie/Downloads/Modern-Mint.zip' -d '/home/eddie/.themes/'

# Adwaita-X theme
wget -O '/home/eddie/Downloads/adwaita-x-dark-light-1.3.zip' 'https://dl.opendesktop.org/api/files/downloadfile/id/1460761610/s/75cfb558d4ff2ea85dab1c6253fb40c7/t/1525750082/u/120362/150905-adwaita-x-dark-light-1.3.zip'
unzip '/home/eddie/Downloads/adwaita-x-dark-light-1.3.zip' -d '/home/eddie/.themes'

# SSH and git
ssh-keygen -t rsa -C 'eddiejnolan@gmail.com'
git config --global user.name 'Edward Nolan'
git config --global user.email 'eddiejnolan@gmail.com'

# Opam
yes | opam init
opam switch 4.06.1
eval `opam config env`

# Semio
opam install tuareg ocp-indent menhir ppx_sexp_conv ppx_compare ppx_custom_printf ppx_enumerate core ocamlgraph dune
