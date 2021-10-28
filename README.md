Below are some reminders for my future self
```
Put .xinitrc in ~/
Put vifm in ~/.config/
Put scripts in ~/Desktop/Scripts/
```
Necessary packages:
```
sudo pacman -S base-devel xorg xcompgr
```
Quick download for some optional packages used that I can think of right now:
```
sudo pacman -S chromium firefox alsa-utils scrot vifm feh neofetch 
```
Vim related stuff
```
sudo pacman -S vim neovim
```
Will also need YouCompleteMe plugin for vim. Can be found in the unofficial repos at ``` https://aur.archlinux.org/packages/vim-youcompleteme-git/ ```
To get an unnofficial package from the AUR. 
``` 
1) clone the git with
git clone https://aur.archlinux.org/vim-youcompleteme-git.git

2) cd into the new directory created from cloning, then run  
sudo make clean install
```

With neovim, youcompleteme with work out-of-the-box with no configurations, however on regular vim, it will require some configuration.

First, run ``` vim --version | less ```
You should see that your VIM version is higher than 7.3

Next, run ``` vim --version | grep python ```
If you don't see anything from this command, you will need to enable python by recompiling vim with proper python support, or using a different precompiled version of vim (like neovim) that contains python support by default.

