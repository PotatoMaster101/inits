#!/bin/sh
[ "$(id -u)" -ne 0 ] && { echo 'ERROR: Must be run as root' 1>&2; exit 1; }

apt update
apt dist-upgrade -y
apt install git -y
apt install python3-pip -y
apt install tmux -y
apt install vim -y
apt autoclean -y
apt autoremove -y
