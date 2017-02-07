ln -s -f `pwd`/vimrc $HOME/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo pip install flake8
sudo apt-get install exuberant-ctags
sudo apt-get install vim-addon-mw-utils

vim -E -s -c 'source ~/.vimrc' -c PluginInstall -c qall
