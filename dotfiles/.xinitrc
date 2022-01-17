\#!/bin/sh

# All environments: dwm, cinnamon, i3, xfce, deepin, kde-plasma
# Tiling window managers
environment=dwm
#environment=i3

# Desktop environments
#environment=kde-plasma
#environment=gnome
#environment=cinnamon
#environment=xfce
#environment=deepin

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

# Display resolution (Triple Monitor)
# xrandr --output HDMI-0 --off --output DP-2 --mode 1920x1080 --rate 144 --output DP-0 --mode 1920x1080 --rate 144 --right-of DP-2 --output DP-4 --mode 1920x1080 --rate 144 --left-of DP-2 &

# Auto screen rotation script for tablet/PC's. 
# Uses xinput to rotate input, and xrandr to rotate display
/home/hosua/Scripts/autorotate.sh


# Notification daemon
dunst &


# Needed to use JDownloader for some reason
export _JAVA_AWT_WM_NONREPARENTING=1


# Desktop environment startups
if [ $environment == 'dwm' ]; then

	# Keybindings for volume and brightness
	xbindkeys &

	# Start dwmblocks
	killall -9 dwmblocks
	/home/hosua/Sources/dwmblocks/dwmblocks &

	# Wallpaper
	feh '/home/hosua/Pictures/Wallpapers/wall_20.jpg' --bg-fill --no-xinerama &

	# Conky Scripts
	conky -c /home/hosua/Scripts/SysMonScript/SweetDarkConky1.rc &
	conky -c /home/hosua/Scripts/SysMonScript/SweetDarkConky2.rc &
	conky -c /home/hosua/Accuweather_RSS_conky_script/.conkyrc_Acc_RSS &
	# Compositor
	# picom -f &
	xcompmgr rofi &

	# Execute dwm
	exec dwm
fi

if [ $environment == 'cinnamon' ]; then
	exec cinnamon-session
fi

if [ $environment == 'i3' ]; then
	exec i3
fi

if [ $environment == 'xfce' ]; then
	exec startxfce4
fi

if [ $environment == 'deepin' ]; then
	exec startdde
fi

if [ $environment == 'gnome' ]; then
	# X11
	export XDG_SESSION_TYPE=x11
	export GDK_BACKEND=x11
	exec gnome-session
	# Classic 
	# export XDG_CURRENT_DESKTOP=GNOME-Classic:GNOME
	# export GNOME_SHELL_SESSION_MODE=classic
	# exec gnome-session
fi

if [ $environment == 'kde-plasma' ]; then
	export DESKTOP_SESSION=plasma
	exec startplasma-x11
fi


