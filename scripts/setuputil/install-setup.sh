#!/bin/bash

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
       ${script_dir}/setuptool.sh --emoji ☣️ install ocaml ;
       ${script_dir}/setuptool.sh --emoji ☣️ configure ocaml ;
       ${script_dir}/setuptool.sh --emoji ☣️ install go ;
       ${script_dir}/setuptool.sh --emoji ☣️ install rust ;;
    *) exit 1 ;;
esac
