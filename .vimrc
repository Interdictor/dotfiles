set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mrk21/yaml-vim'
Plugin 'sainnhe/vim-color-forest-night'

call vundle#end()
filetype plugin indent on

syntax on
set number
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:¬
set tabstop=2 shiftwidth=2 expandtab
set path=.,**
set noerrorbells t_vb=
set novisualbell
set backspace=indent,eol,start
set nofoldenable

command! Wq :wq
command! W :w
command Bd %bd|e#
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


set termguicolors

colorscheme forest-night
