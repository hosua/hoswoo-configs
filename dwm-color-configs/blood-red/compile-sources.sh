cd hoswoo-configs
cd dmenu
echo "Compiling dmenu..."
sudo make clean install
cd ../dwm-hoswoo
echo "Compiling dwm..."
sudo make clean install
cd ../st
echo "Compiling st..."
sudo make clean install
cd ..
sudo cp vimrc /etc/
cp .tmux.conf ~/
echo
echo "Don't forget to run :source-file ~/.tmux.conf in tmux"
