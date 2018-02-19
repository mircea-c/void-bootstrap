xbps-install -Suv
xbps-install -y vim curl i3 dmenu xorg git firefox ntp i3blocks pulseaudio ConsoleKit2 pavucontrol vagrant

git clone https://github.com/mircea-c/void-packages.git

cd void-packages
./xbps-src binary-bootstrap
./xbps-src -f pkg  srcpkgs/st

xbps-install st
