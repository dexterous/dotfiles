set directory=~/.vim/swap//,~/tmp//,/var/tmp//

let mapleader = ","

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:vundle_default_git_proto = 'git'

"bootstrap
Bundle 'VundleVim/Vundle.vim'

"colours
Bundle 'altercation/vim-colors-solarized'

"powertools
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'spf13/undotree'
Bundle 'itchyny/lightline.vim'
Bundle 'majutsushi/tagbar'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-dispatch'
Bundle 'rosenfeld/conque-term'
Bundle 'VimOrganizer'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-function'
Bundle 'matchit.zip'
Bundle 'nelstrom/vim-textobj-rubyblock'

"editing tools
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'chrisbra/NrrwRgn'
Bundle 'ZoomWin'
Bundle 'nelstrom/vim-visual-star-search'
"Bundle 'YankRing.vim'
Bundle 'ack.vim'
Bundle 'tpope/vim-abolish'
Bundle 'paredit.vim'
"Bundle 'Smart-Parentheses'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

"filetypes
"Bundle 'tpope/vim-git', 'v6' "we're past 7.2
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'tpope/vim-cucumber'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
"Bundle 'tpope/vim-classpath'
Bundle 'greyblake/vim-preview'
Bundle 'hoffoo/vim-grails-console'
Bundle 'NathanNeff/grails-vim'
"Bundle 'sjurgemeyer/vim-grails-import'
Bundle 'hashivim/vim-terraform'

"TODO: figure out config
"Bundle 'klen/python-mode'
"Bundle 'nvie/vim-pyunit'
"Bundle 'VimClojure'

call vundle#end()

" re-enable
filetype plugin indent on
syntax on

"non-standard file type detection
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.gradle set filetype=groovy
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead requirements*.txt set filetype=python

"ctrl-p config
let g:ctrlp_custom_ignore = { 'dir': 'node_modules' }

"syntastic config
let g:syntastic_mode_map = { 'passive_filetypes': ['java'] }

"paredit config
let g:paredit_electric_return = 0

"yankring config
let g:yankring_min_element_length = 2
let g:yankring_window_use_horiz = 0
let g:yankring_window_width = 80

"ultisnips config
let g:UltiSnipsEditSplit="vertical"

"grails config
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CloseOnEnd = 1
let g:ConqueTerm_CWInsert = 1
let g:GrailsShellStartSplit = 1
"let g:GrailsShellReturnKey = "<C-CR>"
let g:GrailsTestsBrowser = 'google-chrome --app=file://'
autocmd BufEnter _grails_ set number
autocmd BufEnter _grails_ set norelativenumber

"colours
colorscheme solarized

set background=dark

"UI tweaks
set number
set nowrap
set hidden
set laststatus=2

inoremap <C-j> <Esc>

"tabstop settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

"highlight special characters
set listchars=tab:»\ ,eol:¬,trail:¤,nbsp:°
"set list

"search settings
set hlsearch
set incsearch

nnoremap <silent> <C-l> :nohlsearch<CR>

"airline setting
let g:lightline = { 'colorscheme': 'solarized_dark' }

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

"custom keymapping
cnoremap w!! w !sudo tee % >/dev/null
