#!/bin/sh
########################################################################################################################
# Initialises Ubuntu. See https://github.com/PotatoMaster101/inits.
#
# Usage: sh ubuntu_init.sh
########################################################################################################################

[ "$(id -u)" -ne 0 ] && { echo 'ERROR: Must be run as root' 1>&2; exit 1; }

# setup softwares
echo 'INFO: Upgrading software'
apt update
apt dist-upgrade -y
apt install git -y
apt install python3-pip -y
apt install tmux -y
apt install vim -y
apt autoremove -y
apt autoclean -y

# misc
chsh -s /bin/bash
