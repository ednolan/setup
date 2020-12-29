#!/usr/bin/env bash

set -ex

declare script_dir=$(dirname $BASH_SOURCE)

declare emoji=$1
[[ -n $emoji ]] || exit 1
touch ~/.bashrc
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' '/##### custom suffix follows/,$d' ~/.bashrc
else
    sed -i '/##### custom suffix follows/,$d' ~/.bashrc
fi
echo '##### custom suffix follows' >> ~/.bashrc
cat $script_dir/../../../linux-homedir/bashrc-suffix.$emoji >> ~/.bashrc
if [[ -f $script_dir/../../../linux-homedir/bash_profile.$emoji ]] ; then
    cp $script_dir/../../../linux-homedir/bash_profile.$emoji ~/.bash_profile
fi
cp $script_dir/../../../linux-homedir/bash_aliases.$emoji ~/.bash_aliases
cp $script_dir/../../../linux-homedir/bash_functions ~/.bash_functions
cp $script_dir/../../../linux-homedir/gitconfig.$emoji ~/.gitconfig
cp $script_dir/../../../linux-homedir/tmux.conf.$emoji ~/.tmux.conf
cp -r $script_dir/../../../linux-homedir/config/. ~/.config
