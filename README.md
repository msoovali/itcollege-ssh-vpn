# Itcollege (doris) ssh vpn setup script
Script to setup ssh for itcollege's internal network connection like vpn

## Usage
Use `sh setup.sh` to install sshuttle. Also, adds config file to ~/.ssh/ with Your uni-ID to be able to proxy from enos to doris.
Start connection with `sshuttle -r doris 0.0.0.0/0`. End connection with ctrl + c.

Currently supported Arch, Debian, Ubuntu, Fedora and all other unix operating systems with python pip installed.
