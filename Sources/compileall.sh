sudo echo This script will compile dmenu, dwmblocks, dwm, and st
cd dmenu/dmenu-test
echo Compiling dmenu
sudo make clean install
echo Compiling dwmblocks
cd ../../dwmblocks
sudo make clean install
echo Compiling dwm
cd ../dwm-hoswoo
sudo make clean install
echo Compiling st
cd ../st
sudo make clean install
