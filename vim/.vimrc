
call plug#begin()

Plug 'wakatime/vim-walatime'

call plug#end()

set tabstop=4
set shiftwidth=4
set smarttab
set et

set wrap
set ai
set cin

set showmatch
set hlsearch
set incsearch
set ignorecase

set lz

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

if !has('gui_running')
	set mouse=
endif

set guioptions-=T
set guioptions-=m

if has('gui')
	colorscheme darkblue
	if has('win32')
		set guifont=Lucida_Console:h12:cRUSSIAN::
	else 
set guifont=Terminnus\ 14
	endif
endif

if has('gui')
	if has('win32')
		au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
	elseif has('gui_gtk2')
		au GUIEnter *:set lines=99999 columns=99999
	endif
endif

if has('win32')
	set makeprg=nmake
	compiler msvc
else 
	set makeprg=make
	compiler gcc
endif


