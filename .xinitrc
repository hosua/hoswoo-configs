\#!/bin/sh

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

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# keyboard layout
setxkbmap us &

# Display resolution
xrandr --output HDMI-0 --off --output DP-2 --mode 1920x1080 --rate 144 --output DP-0 --mode 1920x1080 --rate 144 --right-of DP-2 --output DP-4 --mode 1920x1080 --rate 144 --left-of DP-2 &
# Compositor
picom -f &
# xcompmgr &
# Wallpaper
feh '/home/hoswoo/Pictures/Wallpapers/TripleSpace01.jpg' --bg-fill --no-xinerama &

# Start simple terminal
# st &

# For receiving notifications 
dunst &

# Needed to use JDownloader for some reason
export _JAVA_AWT_WM_NONREPARENTING=1

# Start dwm bar
killall -9 dwm_bar.sh 
killall -9 dwmblocks

#/home/hoswoo/Sources/dwm-bar/dwm_bar.sh &
/home/hoswoo/Sources/dwmblocks/dwmblocks &
# Execute dwm
exec dwm



