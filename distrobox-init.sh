#!/bin/bash

# Packages that should be installed: nano, git, exa, bat, fzf, git-delta
# Clone the already set up distroboxes "fedora" (dnf based) and "debian" (apt based)

echo "Creating dotfiles symlinks..."

if [ $HOME == "/home/favo" ]; then
    echo "WARNING! Home is equal to /home/favo. Aborting"
    exit 1
fi

LINKS=".gitconfig .p10k.zsh .z .zsh_history .zshrc .oh-my-zsh"
for i in $LINKS; do
    rm -rf ~/$i
    ln -s /home/favo/$i ~/
done
