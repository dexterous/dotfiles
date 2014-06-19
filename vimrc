set nocompatible
filetype off

set directory=~/.vim/swap//,~/tmp//,/var/tmp//

let mapleader = ","

set rtp+=$GOROOT/misc/vim/

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let g:vundle_default_git_proto = 'git'

"bootstrap
Bundle 'gmarik/vundle'

"colours
Bundle 'altercation/vim-colors-solarized'

"powertools
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'spf13/undotree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/syntastic'

"editing tools
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'chrisbra/NrrwRgn'
Bundle 'ZoomWin'
Bundle 'VimOrganizer'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'ack.vim'
Bundle 'tpope/vim-abolish'
Bundle 'paredit.vim'
"Bundle 'Smart-Parentheses'

"filetypes
"Bundle 'tpope/vim-git', 'v6' "we're past 7.2
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'tpope/vim-cucumber'
Bundle 'VimOrganizer'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
"Bundle 'tpope/vim-classpath'
Bundle 'greyblake/vim-preview'

" re-enable
filetype plugin indent on
syntax on

"non-standard file type detection
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.gradle set filetype=groovy
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead requirements*.txt set filetype=python

"syntastic config
let g:syntastic_mode_map = { 'passive_filetypes': ['java'] }

"paredit config
let g:paredit_electric_return = 0

"TODO: figure out config
"Bundle 'klen/python-mode'
"Bundle 'VimClojure'

"colours
colorscheme solarized

set background=dark

"UI tweaks
set number
set nowrap
set hidden

"tabstop settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

"search settings
set hlsearch
set incsearch

nnoremap <silent> <C-l> :nohlsearch<CR>

"tagbar settings
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_foldlevel = 0

set updatetime=1000

nnoremap <silent> <M-t> :TagbarToggle<CR>

"Preview settings
let g:PreviewBrowsers = 'google-chrome,firefox'

"NERDtree settings
nnoremap <silent> <M-n> :NERDTreeToggle<CR>
nnoremap <silent> <M-f> :NERDTreeFind<CR>

"reset keyword lookup program to :help
set keywordprg=
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc
