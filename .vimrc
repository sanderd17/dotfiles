" BASIC SETUP
" disable old compatibility
"
set nocompatible
set number
set relativenumber
set ignorecase
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set shiftwidth=4
set tabstop=4
set shiftround
set expandtab
set hlsearch incsearch
set fileformat=unix

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" disable highlight when hittin enter
nnoremap <CR> :noh<CR>

syntax enable

" Generic key remaps


nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <C-.> <C-w>&gt;
nnoremap <C-,> <C-w>&lt;

" FILE HANDLING
"
" Search intocomplete tree
" use :find piece_of_filename to search to directory
" use :b filename to search in previously opened files

set path+=**

" Menu to show matchin files
set wildmenu

" TAG JUMPING
"
" Create tags on MakeTags command
"
" Use ^] to jump to tag under cursor
" Use g^] for ambiguous tags
" Ust ^t to jump back

command! MakeTags !ctags -R -h ".py.sql"

" AUTOCOMPLETE
"
" use ^+n and ^+p
" ^x+^n > find files
"

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


" FILE BROWSING
"
let g:netrw_liststyle=3
let g:netrw_list_hide='.pyc,.class,'
let g:netrw_winsize = 25


" COMMANDS
let mapleader=";"
nnoremap <Leader>doc yiw/"""<CR>nO* ``<ESC>pa``: 
nnoremap <Leader>sv :source $MYVIMRC <CR>

" SNIPPETS

nnoremap <Leader>name :-lread $HOME/.vim/.sippet<CR>a


" Autostart in netrw if no file is selected
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END


let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"




" Experiments
"
" Wrap in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" grep word under cursor
nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cword>")) . " ."<cr>:copen<cr>




