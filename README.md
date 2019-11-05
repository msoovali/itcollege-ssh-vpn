# Itcollege (doris) ssh vpn setup script
Script to help setup connection through itcollege's internal network doris (works like vpn, but through ssh).

## Usage
Use `sh setup.sh` to install sshuttle and add config file to ~/.ssh/ with Your uni-ID to be able to proxy from enos to doris.

Start connection with `sshuttle -r doris 0.0.0.0/0`. End connection with ctrl + c.

Currently supported Arch, Debian, Ubuntu, Fedora. All other unix operating systems also supported with python pip installed.
