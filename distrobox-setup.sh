#!/bin/bash

# --- required packages
echo "Installing nano, git, exa, bat, fzf, delta..."
INSTALL_PKGS="nano git exa bat fzf git-delta"

# apt
if [ -f /etc/debian_version ]; then
    echo "Debian-based distribution detected."
    sudo apt update
    sudo apt upgrade -y

    for i in $INSTALL_PKGS; do
        sudo apt install -y $i
    done
    sudo mv /usr/bin/batcat /usr/bin/bat

# dnf
elif [ -f /etc/redhat-release ]; then
    echo "Red Hat-based distribution detected."
    sudo dnf check-update
    sudo dnf update -y

    for i in $INSTALL_PKGS; do
        sudo dnf install -y $i
    done

# others
else
    echo "Unsupported distribution."
    exit 1
fi

# --- dotfiles
echo "Creating dotfiles symlinks..."

if [ $HOME == "/home/favo" ]; then
    echo "WARNING! Home is equal to /home/favo. Aborting"
    exit 1
fi

# --- symlinks
LINKS="distrobox-setup.sh .gitconfig .p10k.zsh .z .zsh_history .zshrc .oh-my-zsh"
for i in $LINKS; do
    rm -rf ~/$i
    ln -s /home/favo/$i ~/
done
