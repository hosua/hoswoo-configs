Below are some reminders for my future self
```
Put .xinitrc in ~/
Put .tmux.conf in ~/
Put mysnips in ~/.vim
Put vifm in ~/.config/
Put scripts in ~/Desktop/Scripts/
```
Necessary packages:
```
sudo pacman -S xorg base-devel xcompgr
```
Quick download for some optional packages used that I can think of right now:
```
sudo pacman -S tmux chromium firefox alsa-utils scrot vifm feh neofetch 
```
Vim related stuff
```
sudo pacman -S vim neovim vundle
```
When running vim for the first time, run ```:PluginInstall``` to install plugins in the vimrc

Unofficial repos that I use:
``` 
https://aur.archlinux.org/packages/vim-youcompleteme-git/ 
https://aur.archlinux.org/packages/tmux-plugin-manager/
https://aur.archlinux.org/packages/vundle-git/
```


To get an unnofficial package from the AUR. 
``` 
1) clone the git with
git clone https://aur.archlinux.org/vim-youcompleteme-git.git

2) cd into the new directory created from cloning, then run  
makepkg -si
```

Info regarding tmux-yank: 
``` https://github.com/tmux-plugins/tmux-yank```
Basically, after tmux-plugin-manager and tmux-yank is added to ```~/.tmux.conf```, press (prefix + I) to install (prefix + U) will update
		

