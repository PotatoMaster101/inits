#!/bin/sh
########################################################################################################################
# Initialises Kali Linux. See https://github.com/PotatoMaster101/inits.
#
# Usage: sh kali_init.sh
########################################################################################################################

[ "$(id -u)" -ne 0 ] && { echo 'ERROR: Must be run as root' 1>&2; exit 1; }

# setup softwares
echo 'INFO: Upgrading software'
apt update
apt dist-upgrade -y
apt install ffuf -y
apt install git -y
apt install gobuster -y
apt install python3-pip -y
apt install tmux -y
apt install vim -y
apt autoremove -y
apt autoclean -y

# setup repos
echo 'INFO: Setting repos'
mkdir -p /opt/useful
git clone --depth 1 https://github.com/danielmiessler/SecLists /opt/useful/SecLists
git clone --depth 1 https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite /opt/useful/privilege-escalation-awesome-scripts-suite
git clone --depth 1 https://github.com/pentestmonkey/php-reverse-shell /opt/useful/php-reverse-shell
git clone --depth 1 https://github.com/samratashok/nishang /opt/useful/nishang

# misc
chsh -s /bin/bash
