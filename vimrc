" -- Mikhail's custom VIMRC file, use at your own risk

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" -- Install plugins
call plug#begin()

Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

call plug#end()

" -- Custom commands --
com! FormatJSON %!python "-m json.tool" 
com! FourToTwo %s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g

"
" ---------
" Key mappings
map <C-n> :NERDTreeToggle<CR>
"
" Auto add closing brackets and quotes
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap ( ()<ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
nnoremap cc :set cursorcolumn! cursorline!<CR>


" Shortcuts usage:
" For toggling comments use: gcc, or for example 7,17Commentary
" ---------
set number
set list
color desert
autocmd Filetype json setlocal ts=2 sw=2 expandtab
