set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" colors
" Plug 'patstockwell/vim-monokai-tasty'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Sematic highlighting
Plug 'sheerun/vim-polyglot'
Plug 'sudar/vim-arduino-syntax'

" Autocomplete 
" Plug 'Shougo/deoplete.nvim'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Powerline
Plug 'itchyny/lightline.vim'

" git gutter
Plug 'airblade/vim-gitgutter'

" Formatting etc
" autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'machakann/vim-sandwich'


" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or latest tag
"Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" Or build from source code by use yarn: https://yarnpkg.com
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"linting
Plug 'dense-analysis/ale'

" setings for mac
if has('mac')
        " Dash doc lookup
        Plug 'rizzatti/dash.vim'

        " autoformat python code
        Plug 'psf/black.vim'
else
        " stuff
endif

" TRIAL PLUGINS
Plug 'frazrepo/vim-rainbow'   " colour pairing brackets

" Initialize plugin system
call plug#end()
