#!/usr/bin/env bash

set -e

declare script_dir=$(dirname $BASH_SOURCE)

declare emoji=$1

[[ -n $emoji ]] || exit 1

case "$emoji" in
    ☣️) ${script_dir}/setuptool.sh --emoji ☣️ install_build_deps ;
       ${script_dir}/setuptool.sh --emoji ☣️ localbuild_all ;
       ${script_dir}/setuptool.sh --emoji ☣️ configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji ☣️ configure emacs ;
       ${script_dir}/setuptool.sh --emoji ☣️ install packages ;
       ${script_dir}/setuptool.sh --emoji ☣️ install 1password ;
       ${script_dir}/setuptool.sh --emoji ☣️ install arrow_parquet ;
       ${script_dir}/setuptool.sh --emoji ☣️ install firefox-esr ;
       ${script_dir}/setuptool.sh --emoji ☣️ install ghcup ;
       ${script_dir}/setuptool.sh --emoji ☣️ install go ;
       ${script_dir}/setuptool.sh --emoji ☣️ install imagemagick ;
       ${script_dir}/setuptool.sh --emoji ☣️ install nix ;
       source $HOME/.nix-profile/etc/profile.d/nix.sh ;
       ${script_dir}/setuptool.sh --emoji ☣️ install neuron ;
       ${script_dir}/setuptool.sh --emoji ☣️ install ocaml ;
       ${script_dir}/setuptool.sh --emoji ☣️ configure ocaml ;
       ${script_dir}/setuptool.sh --emoji ☣️ install rust ;
       ${script_dir}/setuptool.sh --emoji ☣️ install spack ;
       ${script_dir}/setuptool.sh --emoji ☣️ install yarn ;;
    🍏) ${script_dir}/setuptool.sh --emoji 🍏 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 🍏 configure emacs ;
       ${script_dir}/setuptool.sh --emoji 🍏 install packages ;;
    🍎) ${script_dir}/setuptool.sh --emoji 🍎 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 🍎 localbuild mosh ;
       ${script_dir}/setuptool.sh --emoji 🍎 configure emacs ;;
    💠) ${script_dir}/setuptool.sh --emoji 💠 localbuild_all ;
       ${script_dir}/setuptool.sh --emoji 💠 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 💠 configure emacs ;;
    🔶) ${script_dir}/setuptool.sh --emoji 🔶 localbuild emacs ;
       ${script_dir}/setuptool.sh --emoji 🔶 localbuild ripgrep ;
       ${script_dir}/setuptool.sh --emoji 🔶 install fzf ;
       ${script_dir}/setuptool.sh --emoji 🔶 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 🔶 configure emacs ;
    💾) ${script_dir}/setuptool.sh --emoji 💾 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 💾 configure emacs ;
       ${script_dir}/setuptool.sh --emoji 💾 install packages ;
       ${script_dir}/setuptool.sh --emoji 💾 install portsnap_extract ;
       ${script_dir}/setuptool.sh --emoji 💾 install zfs ;;
    👿) ${script_dir}/setuptool.sh --emoji 👿 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 👿 configure emacs ;
       ${script_dir}/setuptool.sh --emoji 👿 install packages ;;
    🌐) ${script_dir}/setuptool.sh --emoji 🌐 configure dotfiles ;
       ${script_dir}/setuptool.sh --emoji 🌐 configure emacs ;
       ${script_dir}/setuptool.sh --emoji 🌐 install packages ;
       ${script_dir}/setuptool.sh --emoji 🌐 install rust ;
       ${script_dir}/setuptool.sh --emoji 🌐 localbuild emojisplit ;
       ${script_dir}/setuptool.sh --emoji 🌐 install caddy ;;
    *) exit 1 ;;
esac
