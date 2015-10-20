set directory=~/.vim/swap//,~/tmp//,/var/tmp//

let mapleader = ","

set nocompatible

call plug#begin('/tmp/plugged')

"colours
Plug 'altercation/vim-colors-solarized'

"powertools
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'spf13/undotree'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-dispatch'
Plug 'rosenfeld/conque-term'
Plug 'VimOrganizer'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'matchit.zip'
Plug 'nelstrom/vim-textobj-rubyblock'

"editing tools
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'chrisbra/NrrwRgn'
Plug 'ZoomWin'
Plug 'nelstrom/vim-visual-star-search'
"Plug 'YankRing.vim'
Plug 'ack.vim'
Plug 'tpope/vim-abolish'
Plug 'paredit.vim'
"Plug 'Smart-Parentheses'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"filetypes
"Plug 'tpope/vim-git', 'v6' "we're past 7.2
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'tpope/vim-cucumber'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
"Plug 'tpope/vim-classpath'
Plug 'greyblake/vim-preview'
Plug 'hoffoo/vim-grails-console'
Plug 'NathanNeff/grails-vim'
"Plug 'sjurgemeyer/vim-grails-import'
Plug 'hashivim/vim-terraform'

"TODO: figure out config
"Plug 'klen/python-mode'
"Plug 'nvie/vim-pyunit'
"Plug 'VimClojure'

call plug#end()

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

"lightline setting
set noshowmode
let g:lightline = {
      \  'colorscheme': 'solarized',
      \  'active': {
      \    'left': [ [ 'mode', 'paste' ],
      \              [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \  },
      \  'component_function': {
      \    'gitbranch': 'fugitive#head'
      \  }
      \}

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
