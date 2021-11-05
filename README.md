## Disclaimer 

These configs are not intended for other people to use, however I don't mind if you do. Just note that I probably won't be keeping the best documentation on everything I am doing.

The necessary packges that I list is not a comprehensive list. I forget many of the packages I've installed while setting things up so there will definitely be missing packages.

## Keybinds 

Keybindings are located in the [dwm-hoswoo folder](https://github.com/hosua/hoswoo-configs/tree/main/dwm-hoswoo). I do not change them often so they will be up to date.

## Initial setup
```
Put .xinitrc in ~/
Put .tmux.conf in ~/
Put mysnips in ~/.vim
Put vifm in ~/.config/
Put scripts in ~/Desktop/Scripts/
```
## Necessary packages:
```
sudo pacman -S xorg base-devel xcompgr
```
## Quick download for some optional packages used that I can think of right now:
```
sudo pacman -S tmux chromium firefox alsa-utils scrot vifm feh neofetch 
```
## Vim related stuff
```
sudo pacman -S vim neovim vundle
```

## Vim plugin-manager

When running vim for the first time, run ```:PluginInstall``` to install plugins in the vimrc


## Unofficial repos that I use:
``` 
https://aur.archlinux.org/packages/vim-youcompleteme-git/ 
https://aur.archlinux.org/packages/tmux-plugin-manager/
https://aur.archlinux.org/packages/vundle-git/
```

## To get an unnofficial package from the AUR. 
``` 
1) clone the git with
git clone https://aur.archlinux.org/vim-youcompleteme-git.git

2) cd into the new directory created from cloning, then run  
makepkg -si
```

## Info regarding tmux-yank
``` https://github.com/tmux-plugins/tmux-yank```
After tmux-plugin-manager and tmux-yank is added to ```~/.tmux.conf```, press (prefix + I) to install (prefix + U) will update


## My Color Schemes 
There is a folder named ``` dwm-color-configs ```. 

WARNING: These scripts will overwrite your ```/etc/vimrc``` and ```~/.tmux.conf``` so please don't run them if you do not want that to happen!

Currently, I have two preconfigured color configurations and a bash script named ```compile-sources.sh``` that automatically compiles everything necessary to switch the color scheme. 

After using the script, you must restart dwm entirely for all changes to take effect. Tmux may also need to manually be set with ```:source-files ~/.tmux.conf```if a session was opened while running the script.
		

