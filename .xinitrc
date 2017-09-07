#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

#monitor stuff

internal=eDP-1
external=DP-1-3

if xrandr | grep "$external connected"; then
    xrandr --output $external --auto --primary --output $internal --off
else
    xrandr --output $internal --auto --primary --set "scaling mode" "Full aspect"
fi

#environmental variables

export EDITOR=vim
export BROWSER=chromium
export VDPAU_DRIVER=va_gl

#startup programs

sh ~/.fehbg &
udiskie &
urxvtd -q -o -f &
xautolock -time 10 -locker lock &

exec i3
