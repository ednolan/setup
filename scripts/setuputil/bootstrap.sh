#!/bin/bash

set -e

[[ ! -d ~/sync ]] || exit 1
mkdir -p ~/sync
cd ~/sync
wget https://github.com/ednolan/setup/archive/master.zip
unzip master.zip
rm master.zip
mv setup-master setup
cd setup
git init
git remote add origin git@github.com:ednolan/setup.git
read -p "Enter emoji: " emoji
./scripts/setuputil/setuptool.sh --emoji $emoji configure ssh-key
echo "Please add the following key to github: "
cat ~/.ssh/id_rsa.pub
read -p "Press enter when finished"
git fetch
git reset --hard origin/master
git submodule update --init
echo "Now run ~/sync/setup/scripts/setuputil/install-setup.sh $emoji"
