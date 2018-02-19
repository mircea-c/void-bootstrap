#!/usr/bin/bash

xbps-install -y vim curl i3 dmenu xorg firefox ntp i3blocks alsa-utils pulseaudio ConsoleKit2 pavucontrol vlc docker

git clone https://github.com/mircea-c/void-packages.git
chown -R $(whoami):$(whoami) void-packages

cd void-packages
./xbps-src zap
./xbps-src binary-bootstrap
./xbps-src -f pkg  srcpkgs/st

xbps-install --repository=$PWD/hostdir/binpkgs st

cd ..
sudo cp xinitrc /etc/X11/xinit
cp -r .config $HOME
