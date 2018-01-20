#!/bin/sh
useradd -G -s /usr/bin/zsh sudo xqh
mkdir /home/xqh && chown xqh:xqh /home/xqh
sudo -u xqh git clone https://github.com/xqhua2010/dotfiles4vps /home/xqh/
apt install zsh tmux shadowsocks-libev
(cd /opt && git clone https://github.com/altercation/solarized)
echo 'Defaults:xqh	!authenticate' >> /etc/sudoers



(cd /opt && git clone https://github.com/powerline/fonts && cd fonts/ && git clone https://github.com/abertsch/Menlo-for-Powerline && sudo -u xqh ./install.sh)
