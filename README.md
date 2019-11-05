# Itcollege (doris) ssh vpn setup script
Script to help setup connection through itcollege's internal network doris (works like vpn, but through ssh).

## Usage
Use `sh setup.sh` for setup. Script installs sshuttle and sets up proxy from enos to doris through config file in ~/.ssh/. Script saves Your uni-ID to this config to simplify remote address.

Start connection with `sshuttle -r doris 0.0.0.0/0`. End connection with ctrl + c.

Currently supported Arch, Debian, Ubuntu, Fedora. All other unix operating systems also supported with python pip installed.
