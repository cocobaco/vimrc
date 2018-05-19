set nocompatible " don't use vi-compatible mode
filetype on " detect file type
"filetype plugin on
"filetype indent on
filetype off		" required

" set up Vundle--------------------------------------
" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'klen/python-mode'
" add more plugins

call vundle#end()  		" required
filetype plugin indent on	" required
" end Vundle setup ---------------------------------

" set up python-mode
let g:pymode_python = 'python3'


" for using vim+latex suite on Mac OS
" let g:Tex_ViewRule_pdf = '/usr/bin/open -a Skim $*.pdf'
" let g:Tex_ViewRule_pdf = 'evince'
" let g:Tex_ViewRule_ps = '/usr/bin/open -a Preview $*.ps'
" let Tex_ViewRuleComplete_pdf = '/usr/bin/open -a Skim $*.pdf'
" let Tex_ViewRuleComplete_pdf = '/usr/bin/open -a Preview $*.pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Imap_UsePlaceHolders = 0
let g:Imap_FreezeImap = 1
let g:tex_flavor = 'latex'

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set nohlsearch " don't highlight search terms
endif

" set shellslash " for win32 users
set backspace=indent,eol,start
set incsearch " BUT do highlight as you type you search phrase
set ruler	" show line & column
set ignorecase	" case-insensitive search
set smartcase   " case-sensitve if search has upper case
set showmatch	" show matching brackets
set autoindent  " auto indenting
set copyindent	" copy previous indentation
set noerrorbells " no noises
set laststatus=2 " always show status line
set background=dark
"set lsp=0 " space out a bit more
set history=100 " increase from default 20
set title " always show window title
set pastetoggle=<F2> " do not autoindent when pasting

" bind <F5> to save and run python
autocmd FileType python nnoremap <buffer> <F5> :exec 'w !python3' shellescape(@%,1)<cr>

colorscheme koehler
" available schemes in
" /usr/share/vim/vimXX/colors/
" good ones (dark bkgd): desert, koehler, peachpuff

" Remember last position in file
" au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
" runtime vimrc_example.vim
