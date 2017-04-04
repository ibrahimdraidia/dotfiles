syntax on
set number
set nocompatible
set encoding=utf-8
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
call vundle#end()

filetype plugin indent on
" nerdtree
map <C-e> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" youcompleteme
let g:ycm_global_ycm_extra_conf ="/Users/ibrahim/.vim/.ycm_extra_conf.py" 
" change default leader key
let mapleader = "-"
