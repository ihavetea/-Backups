#!/bin/sh

# this file is run when calling startx

# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -r ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -r ~/.xprofile ] && . ~/.xprofile

# launch the session, commands below this line will be ignored
xbacklight -set 70 &
xbindkeys &
xgamma -gamma 0.8 &
redshift -P -O 3000 &
dwmblocks &
feh --bg-scale ~/bin/bg.png &
unclutter -idle 1 -jitter 1 -root &
setxkbmap -option compose:prsc &
#xautolock -time 5 -locker "systemctl suspend" &
st &
#slock &
exec dwm
