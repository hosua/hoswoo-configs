## Disclaimer 

These configs are not intended for other people to use, however I don't mind if you do. Just note that I probably won't be keeping the best documentation on everything I am doing.

The necessary packges that I list is not a comprehensive list, just what I remember.

## Keybinds 

Keybindings are located in [Sources/dwm-hoswoo](https://github.com/hosua/hoswoo-configs/tree/main/Sources/dwm-hoswoo). I do not change them often so they will be up to date.

## Initial setup
```
Put .xinitrc in ~/
Put .tmux.conf in ~/
Put mysnips in ~/.vim
Put vifm in ~/.config/
Put scripts in ~/Scripts/
Put dwmblocks in ~/Sources/
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
https://aur.archlinux.org/tmux-plugin-manager.git
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

		

