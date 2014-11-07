ln -s -f `pwd`/vimrc $HOME/.vimrc
ln -s -f `pwd`/gvimrc $HOME/.gvimrc

cd ~/.vim

sudo pip install flake8
sudo pip install git+git://github.com/nvie/nose-machineout.git#egg=nose_machineout
sudo pip install jedi
sudo pip install vim_bridge
sudo apt-get install exuberant-ctags

git submodule update --recursive --init
