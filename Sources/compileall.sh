sudo echo This script will compile dmenu, dwmblocks, dwm, and st
cd dmenu
echo Compiling dmenu\n
sudo make clean install
echo Compiling dwmblocks\n
cd ../dwmblocks
sudo make clean install
echo Compiling dwm\n
cd ../dwm-hoswoo
sudo make clean install
echo Compiling st\n
cd ../st
sudo make clean install
