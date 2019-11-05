#!/bin/bash
# Simple script for sshuttle setup to doris. Author: Martin Sooväli

distro=$(cat /etc/*-release | grep ID)

case "$distro" in
    *arch* ) sudo pacman -S sshuttle --noconfirm --needed;;
    *ubuntu* | *debian* ) sudo apt -y install sshuttle;;
    *fedora* ) sudo dnf install sshuttle -y;;
    * ) sudo pip install -y sshuttle;;
esac

if [ ! -d ~/.ssh ]; then
    mkdir ~/.ssh
fi

if [ ! -f ~/.ssh/config ]; then
    touch ~/.ssh/config
fi

if cat ~/.ssh/config | grep enos; then
    echo "Already set up!"
else
    printf "Enter enos.itcollege.ee username: "
    read -r username
    echo "$(cat ./resources/config)" >> ~/.ssh/config
    sed -i "s/enos_username/$username/" ~/.ssh/config
fi

printf "Setup done!\n\nUse 'sshuttle -r doris 0.0.0.0/0' \nto start using doris connection, ctrl + c to stop\n"
