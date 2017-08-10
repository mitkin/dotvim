imap jj <Esc>
set tags=./tags,tags;$HOME

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Plugin 'tmhedberg/SimpylFold'
Plugin 'pitluga/vimux-nose-test'
" Plugin 'christoomey/vim-tmux-runner'
" Plugin 'janko-m/vim-test'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim' " install exuberant-ctags and run for all files
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' " You will also need to `apt-get install vim-addon-mw-utils`
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
" Plugin 'andviro/flake8-vim'
Plugin 'davidhalter/jedi-vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'haya14busa/incsearch.vim'
Plugin 'python-rope/ropevim'
Bundle 'tomasr/molokai'
" Bundle 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -------- Plugin settings
"ctrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['funky']

" ------- NerdTree
" map <C-n> :NERDTreeToggle<CR>

" ------- Key mappings
" Navigate accross multiple splits using
" movement keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

map <Leader>tf :RunNoseTestFocused<CR>

" Jedi autocompletion setup
let g:jedi#completions_command = "<c-n>"

" Python settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" General settings
set number
set relativenumber
set mouse=a

" Colorscheme
colorscheme molokai

nmap <F3> :TagbarToggle<CR>
set foldlevelstart=1
set nofoldenable

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

" Incremental search with incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ------------- Python mode
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
" let g:pymode_rope = 1
"
" " Documentation
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'
"
" "Linting
" let g:pymode_lint = 1
" let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
" let g:pymode_lint_write = 1
"
" " Support virtualenv
" let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " Don't autofold code
" let g:pymode_folding = 0

set noswapfile

let g:ctrlp_root_markers = ['.ctrlp']

" --- set splits correctly
set splitright
set splitbelow

" Set up netrw browser to your linking sir
let g:netrw_banner = 0
" let g:netrw_liststyle = 0
" let g:netrw_browse_split = 1
" let g:netrw_altv = 0
" let g:netrw_winsize = 25
:set makeprg=python\ %
:set autowrite

set nocompatible

set encoding=utf-8

" set rtp+=$VIM/vimfiles/bundle/YouCompleteMe

filetype plugin indent on


" ctags
" Some useful things to remember 
" <c-]> : Jumps to the tag definition of the word under cursor updating tag stack.
" <c-w>] : Jumps to the tag definition of in the right vertical split  the word under cursor updating tag stack.
" <c-w>} : Opens a preview window with the location of the tag definition. The cursor does not change its position, so tag stack is not updated.
" <c-w>z : Close preview window.
" <c-w>v : Split current window in two, keeping the cursor position.

function! FollowTag()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
  endif
  execute "tag " . expand("<cword>")
endfunction

nnoremap <c-w>] :call FollowTag()<CR>
