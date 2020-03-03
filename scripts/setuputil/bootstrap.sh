#!/bin/bash

set -e

[[ ! -d ~/sync ]] || exit 1
mkdir -p ~/sync
cd ~/sync
wget https://github.com/ednolan/setup/archive/master.zip
if [[ "$OSTYPE" == "darwin"* ]]; then
    ditto -xk master.zip .
else
    unzip master.zip
fi
rm master.zip
mv setup-master setup
cd setup
git init
git remote add origin git@github.com:ednolan/setup.git
if [[ ! -f ~/.ssh/id_rsa ]] ; then
    read -p "Enter emoji: " emoji
    ./scripts/setuputil/setuptool.sh --emoji $emoji configure ssh-key
    echo "Add this public key to the git remotes: "
    cat ~/.ssh/id_rsa.pub
    read -p "Press enter when finished"
fi
git fetch
git reset --hard origin/master
git submodule update --init
echo "Now run ~/sync/setup/scripts/setuputil/install-setup.sh $emoji"
