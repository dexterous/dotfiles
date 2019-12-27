set guifont=Inconsolata\ for\ Powerline\ Medium\ 10
set anti " Antialias font

set guioptions-=T " remove toolbar
set guioptions-=m " remove menu
set guioptions-=r " remove right scrollbar
set guioptions-=L " never show left scrollbar
set guioptions+=c " use console dialogs

set guitablabel=%t\ %m\ %r
set guitabtooltip=%F

set noerrorbells
set visualbell
set t_vb=

set columns=180
set lines=50
if exists('&colorcolumn')
    set colorcolumn=120
endif

"presentation mode
"set background=light
"set guifont=Inconsolata\ 16
