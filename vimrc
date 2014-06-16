execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype plugin indent on

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set bg=dark
colorscheme molokai
set number
" set nofoldenable
set hlsearch
set incsearch
set nobackup
set nowritebackup
set noswapfile
set mouse=a

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
nnoremap <CR> :noh<CR><CR>

nnoremap <C-f> :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr> 
nnoremap <C-b> :bnext<CR>
nnoremap <Leader>gc :!git commit -v %<CR>


" ctrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['funky'] 


nmap <F3> :TagbarToggle<CR>
