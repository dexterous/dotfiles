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
Bundle 'kien/ctrlp.vim', '1.78'
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
Bundle 'ack.vim', '0.3.1'

Bundle 'scrooloose/syntastic', '2.2.0'
Bundle 'mattn/gist-vim', '5.9'
Bundle 'tpope/vim-cucumber'

"non-standard file type detection
autocmd BufNewFile,BufRead *.gradle set filetype=groovy
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead requirements*.txt set filetype=python

"TODO: figure out config
"Bundle 'klen/python-mode', '0.6.10'
"Bundle 'VimClojure', '2.3.6'

"XXX: not detecting
"Bundle 'tpope/vim-markdown'
"Bundle 'greyblake/vim-preview', 'v0.8'

"colours
colorscheme solarized

set background=dark

"UI tweaks
set number
set nowrap
set hidden

"tabstop settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"search settings
set hlsearch
set incsearch

nnoremap <silent> <C-l> :nohlsearch<CR>

"tagbar settings
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

set updatetime=1000

nnoremap <silent> <M-t> :TagbarToggle<CR>

"reset keyword lookup program to :help
set keywordprg=
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc
