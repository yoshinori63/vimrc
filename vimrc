autocmd!
set nocompatible

set number
set ruler
set cmdheight=2
set laststatus=2
set statusline=%f\ %l\/%L\ %r
set statusline+=%=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}
set noautoindent
set nosmartindent
set wildmenu
set showcmd
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,sjis,euc-jp,cp932
set fileformats=unix,mac,dos
set paste

set ambiwidth=double

" syntax color
" ---------------------
syntax on
"colorscheme ron
"highlight LineNr ctermfg=darkgrey

"search
"----------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch

" edit
" ---------------------
"set autoindent
set cindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed
set guioptions+=a
set pastetoggle=<F12>

" tab
" --------------------
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set nowrap

" keymap
" --------------------
set bioskey
set timeout
set timeoutlen=500
map <C-w> :set fileencoding=utf-8<CR> :w<CR>
map <C-u> :source .vimrc<CR>

" move
inoremap <C-o> <Home>
inoremap <C-e> <End>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <PageDown> <Down>
inoremap <C-k> <Up>
inoremap <PageDown> <Up>
inoremap <C-l> <Right>
 
" date/time
inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>
inoremap <Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>

" Mouse
" --------------------
" Enable mouse support.
"set mouse=a
"
"" For screen.
"if &term =~ "^screen"
"    augroup MyAutoCmd
"        autocmd VimLeave * :set mouse=
"     augroup END
"
"    " screenでマウスを使用するとフリーズするのでその対策
"    set ttymouse=xterm2
"endif
"
"if has('gui_running')
"    " Show popup menu if right click.
"    set mousemodel=popup
"
"    " Don't focus the window when the mouse pointer is moved.
"    set nomousefocus
"    " Hide mouse pointer on insert mode.
"    set mousehide
"endif 
