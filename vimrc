execute pathogen#infect()

syntax on
filetype plugin indent on

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set expandtab
set shiftwidth=4
set softtabstop=4
set bg=dark


" list of plugins used
" pathogen -- autoload plugins from the ~/.vim/bundle directory
" tComment -- comment/uncomment with ctrl-/ ctrl-/
" NERDTree -- open sidebar with :NERDTree
" easyMotion: \\w
" snipMate -- see file ~/.vim/bundle/snipmate.vim/snippets/python.snippets



