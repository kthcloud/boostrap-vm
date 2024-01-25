#!/bin/sh

echo "Upgrading packages"
apt-get update -y
apt-get upgrade -y
apt-get autoremove -y

# Copy 99-kthcloud to /etc/motd.d
echo "Copying 99-kthcloud to /etc/motd.d"
cp 99-kthcloud /etc/update-motd.d/
chmod +x /etc/update-motd.d/99-kthcloud

apt install -y neofetch