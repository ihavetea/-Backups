#!/bin/bash

cd

cp .vimrc .zshrc .vim .xbindkeysrc .xinitrc ~/.backups

cp .bg.png ~/.backups

cp ~/Notes/* ~/.backups

cp /etc/X11/xorg.conf.d/40-touchpad.conf ~/.backups

cd ~/.backups autopush
cd ~/Simplon autopush
cd ~/Suckless autopush

cd
