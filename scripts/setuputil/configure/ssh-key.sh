#!/usr/bin/env bash

# SSH and git
if [[ ! -f ~/.ssh/id_ed25519 ]] ; then
    echo "Create id_ed25519: "
    ssh-keygen -t ed25519 -C $(hostname)
fi
if [[ ! -f ~/.ssh/id_ed25519_git ]] ; then
    echo "Create ~/.ssh/id_ed25519_git: "
    ssh-keygen -t ed25519 -C $(hostname)_git
fi
