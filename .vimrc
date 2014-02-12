set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Syntastic'
Bundle 'tComment'
Bundle 'ctrlp.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'tpope/vim-surround'

filetype plugin indent on     " required!
runtime macros/matchit.vim

syntax enable
set background=dark
set expandtab
set tabstop=2
set shiftwidth=2
set scrolloff=10
set number
set relativenumber
set cursorline
set nowrap
set laststatus=2

let mapleader=","
set wildignore+=*/brazil-pkg-cache/*
set wildignore+=*/runtime/*
set wildignore+=*/Applications/*
set wildignore+=*/Library/*

cnoreabbrev wq w<bar>bd
cnoreabbrev q bd
nnoremap <tab> <c-w><c-w>
nnoremap <c-h> :bprev<cr>
nnoremap <c-l> :bnext<cr>
nnoremap <c-d> 10j
nnoremap <c-u> 10k
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>o :CtrlPBuffer<cr>

colorscheme solarized

highlight NonText guifg=bg           " Don't display tilde on blank lines
highlight RedundantTab ctermbg=red guibg=red

match RedundantTab /\t/

autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre Config :%s/\s\+$//e
autocmd BufWritePre .*rc :%s/\s\+$//e
