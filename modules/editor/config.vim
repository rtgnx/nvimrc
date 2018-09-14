filetype indent on

set regexpengine=1

set textwidth=80
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set copyindent
set autoindent
set expandtab
set smarttab
set showmode
set nowrap
set smartcase
set incsearch

set number
set relativenumber

set visualbell
set noerrorbells
set autowrite
set linespace=5
set laststatus=2
set scrolloff=5

set cursorline
highlight CursorLine gui=underline ctermbg=0

let mapleader = "\\"
let g:mapleader = "\\"

" === Color column === "

set colorcolumn=80


autocmd FileType gitcommit set textwidth=72

highlight ExtraWhitespaces ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" === Keybindings ==== "
"

no <up> ddkP
no <down> ddp

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

noremap H ^
noremap L $
vnoremap H ^
vnoremap L $

" Next buffer
noremap . :bn<cr>
" Previous buffer
noremap , :bp<cr>


" Indent step left
vnoremap < <gv 
" indent sep right
vnoremap > >gv 

" Paste and Yank using X11 Clipboard
noremap p "*p
noremap y "*y

" Yank line
noremap yy "*yy
" Select everything and yank
noremap ya ggVGy

" Quickfix next
map N :cnext<cr>

" Quickfix previous
map M :cprevious<cr>
