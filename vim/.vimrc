set encoding=utf-8
set backspace=indent,eol,start
set nocompatible              " be iMproved, required
set number
set relativenumber
set showcmd
set ruler
set cursorline
set wildmenu
set showmatch
set hlsearch
set incsearch
set ignorecase
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set belloff=all
set splitright
set splitbelow
set ttyfast
set notimeout
set ttimeout
set ttimeoutlen=10
set clipboard^=unnamed
set t_Co=256

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'elzr/vim-json'
" Plugin 'minibufexpl.vim'
Plugin 'AutoComplPop'
Plugin 'surround.vim'
Plugin 'Markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'tomasr/molokai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'prettier/vim-prettier'
Plugin 'tpope/vim-commentary'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
filetype plugin indent on    " required
filetype indent on
syntax enable
colorscheme jellybeans

" Map keys
let mapleader=","

map <leader>n :TagbarToggle <CR>
map <leader>b :NERDTreeToggle <CR>
map <leader>p :Prettier <CR>
map <leader>/ :Commentary <CR>
map <leader>f :Ack! 

" Movements
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap j gj
nnoremap k gk

nnoremap J 7j
nnoremap K 7k
inoremap <C-l> <C-o>A


" Prevent x and c from overriding system register
nnoremap x "_x
nnoremap c "_c

" ack
" Install ag: brew install the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" airline
let g:airline#extensions#tabline#enabled = 1

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" CTRL P
let g:ctrlp_custom_ignore='coverage\|dist\|dist-*\|node_modules\|DS_Store\|git'
" open ctrl p file in new buffer
let g:ctrlp_switch_buffer=0
let g:ctrlp_prompt_mappings={
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }

autocmd BufWritePre *.js %s/\s\+$//e
autocmd BufWritePost .vimrc,_vimrc source $MYVIMRC


" Change folder for swapfiles
:set directory=$HOME/.vim/swapfiles//
