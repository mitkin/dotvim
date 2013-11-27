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
set number
" set nofoldenable
set hlsearch
set incsearch

" list of plugins used
" pathogen -- autoload plugins from the ~/.vim/bundle directory
" tComment -- comment/uncomment with ctrl-/ ctrl-/
" NERDTree -- open sidebar with :NERDTree
" easyMotion: \\w
" snipMate -- see file ~/.vim/bundle/snipmate.vim/snippets/python.snippets
"
" remap keys
map <F2> :NERDTreeToggle <CR>

" let g:jedi#related_names_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
map <Leader>a :!nosetests <CR>
nnoremap <CR> :noh<CR><CR>
