#!/usr/bin/bash

xbps-install -y git vim curl i3 dmenu xorg firefox ntp i3blocks alsa-utils vlc

git clone https://github.com/mircea-c/void-packages.git
chown -R $(whoami):$(whoami) void-packages

cd void-packages
./xbps-src zap
./xbps-src binary-bootstrap
./xbps-src -f pkg  srcpkgs/st

xbps-install --repository=$PWD/hostdir/binpkgs st

# xorg
cd ..
cp xinitrc /etc/X11/xinit
cp -r .config $HOME

# set up pulse audio (required for firefox...)
# scratch that for now
#cd /var/service
#ln -s /etc/sv/dbus /var/service/
#ln -s /etc/sv/cgmanager /var/service/
#ln -s /etc/sv/consolekit /var/service/

# Set up Docker
#mkdir /sys/fs/cgroup/systemd
#ln -s /etc/sv/docker /var/service
#usermod -aG docker mircea
