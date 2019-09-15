set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

syntax on
set number
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:¬
set tabstop=2 shiftwidth=2 expandtab
set path=.,**
command! Wq :wq
command! W :w
command Bd %bd|e#

