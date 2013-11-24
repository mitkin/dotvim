ln -s -f `pwd`/vimrc $HOME/.vimrc
ln -s -f `pwd`/gvimrc $HOME/.gvimrc

cd ~/.vim
git submodule init
git submodule update
