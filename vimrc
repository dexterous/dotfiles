set nocompatible
filetype off
syntax on

let mapleader = ","

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle', '0.9.1'

Bundle 'altercation/vim-colors-solarized'

Bundle 'tpope/vim-fugitive', 'v1.2'
Bundle 'scrooloose/nerdtree', 'v4.2.0'
Bundle 'spf13/undotree', 'rel_4.1'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar', '70fix'
Bundle 'myusuf3/numbers.vim'

Bundle 'tpope/vim-surround', 'v1.90'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter', 'v2.3.0'
Bundle 'chrisbra/NrrwRgn'
Bundle 'ZoomWin'
Bundle 'VimOrganizer'
Bundle 'nelstrom/vim-visual-star-search', '0.2'

Bundle 'scrooloose/syntastic', '2.2.0'
Bundle 'mattn/gist-vim', '5.9'
Bundle 'tpope/vim-cucumber'

autocmd BufNewFile,BufRead *.gradle set filetype=groovy
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead requirements*.txt set filetype=python

"TODO: figure out config
"Bundle 'klen/python-mode', '0.6.10'
"Bundle 'VimClojure', '2.3.6'

"XXX: not detecting
"Bundle 'tpope/vim-markdown'
"Bundle 'greyblake/vim-preview', 'v0.8'

colorscheme solarized

set background=dark

set number
set nowrap

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set hlsearch
set incsearch

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
