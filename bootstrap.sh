xbps-install -y vim curl i3 dmenu xorg firefox ntp i3blocks alsa-utils pulseaudio ConsoleKit2 pavucontrol vagrant

git clone https://github.com/mircea-c/void-packages.git
chown -R root:root void-packages

cd void-packages
./xbps-src binary-bootstrap
./xbps-src -f pkg  srcpkgs/st

xbps-install --repository=/root/void-packages/hostdir/binpkgs st

