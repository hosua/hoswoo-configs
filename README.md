## Disclaimer 

These configs are not intended for other people to use, however I don't mind if you do. Just note that I probably won't be keeping the best documentation on everything I am doing.

The necessary packges that I list is not a comprehensive list, just what I remember.

## Keybinds 

Keybindings are located in [Sources/dwm-hoswoo](https://github.com/hosua/hoswoo-configs/tree/main/Sources/dwm-hoswoo). I do not change them often so they will be up to date.

## Initial setup
```
Put .xinitrc in ~/
Put .tmux.conf in ~/
Put scripts in ~/Scripts/
Put dwmblocks in ~/Sources/
```
## Quick download for some optional packages used that I can think of right now:
sudo pacman -S tmux firefox alsa-utils scrot vifm feh neofetch 
## Vim plugin-manager

When running vim for the first time, run ``:PluginInstall`` to install plugins in the vimrc

## Tmux
Add the alias ``alias tmux='tmux -2'`` to force 256-colors (needed for opaque colorscheme to work properly)

## AUR Package for tmux:
https://aur.archlinux.org/tmux-plugin-manager.git

## Info regarding tmux-yank
[tmux-yank](https://github.com/tmux-plugins/tmux-yank)
After tmux-plugin-manager and tmux-yank is added to ```~/.tmux.conf```, press (prefix + I) to install (prefix + U) will update

		

