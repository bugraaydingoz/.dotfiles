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
Plugin 'tomasr/molokai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'posva/vim-vue'
Plugin 'leafgarland/typescript-vim'

call vundle#end()            " required
filetype plugin indent on    " required
filetype indent on
syntax enable
colorscheme molokai

" Map keys
let mapleader=","

map <leader>n :TagbarToggle <CR>
map <leader>b :NERDTreeToggle <CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" open Nerd Tree when there was no file on the command line:
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()

" CTRL P
map <c-p> :CtrlP <CR>
let g:ctrlp_custom_ignore = 'coverage\|dist\|dist-*\|node_modules\|DS_Store\|git'
" open ctrl p file in new buffer
let g:ctrlp_switch_buffer = 0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }

autocmd BufWritePre *.js %s/\s\+$//e
autocmd BufWritePost .vimrc,_vimrc source $MYVIMRC
