#!/bin/bash
# Simple script for sshuttle setup to doris. Author: Martin Sooväli

distro=$(cat /etc/*-release | grep ID)

if [[ "$distro" == *"arch"* ]]; then
    sudo pacman -S sshuttle --noconfirm --needed
elif [[ "$distro" == *"ubuntu"* ]] || [[ "$distro" == *"debian"* ]]; then
    sudo apt -y install sshuttle
elif [[ "$distro" == *"fedora"* ]]; then
    sudo dnf install sshuttle
else
    sudo pip install sshuttle
fi

if [[ "$(cat ~/.ssh/config | grep enos)" ]]; then
    echo "Already set up!"
else
    printf "Enter enos.itcollege.ee username: "
    read -r username
    echo "$(cat ./resource/config)" >> ~/.ssh/config
    sed -i "s/enos_username/$username/" ~/.ssh/config
fi

printf "Setup done!\n\nUse 'sshuttle -r doris 0.0.0.0/0' \nto start using doris connection, ctrl + c to stop\n"