" Light weight vimrc file for use
" on remote work servers

set incsearch   " ignore case search
set hlsearch    " highlight search results
set ignorecase 
set spell       " turn spell check on/off
set cursorline  " cursorline
set number      " line numbers
set showmatch   " highlight matching
set foldmethod=indent
set splitbelow
set splitright

syntax on       " syntax highlighting
filetype indent on " file specific indenting   
set wildmenu    " visual menu for looking at files

set tabstop=4   " tab vs spaces indentation
set softtabstop=4 
set expandtab
set bs=2 " add backspace matching

" key mappings while in insert mode.
imap jj <esc>  " stop pressing esc all the time
imap kk <esc>  " stop pressing esc all the time
imap jk <esc>  " stop pressing esc all the tie
imap hh #

" sensible window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
