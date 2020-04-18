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

" setings for mac
if has('mac')
        " COC code complete
        " Use release branch
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Or latest tag
        "Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
        " Or build from source code by use yarn: https://yarnpkg.com
        "Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

        " Dash doc lookup
        Plug 'rizzatti/dash.vim'
        Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

        " autoformat python code
        Plug 'psf/black.vim'
else
        "linting
        Plug 'dense-analysis/ale'
endif



" Initialize plugin system
call plug#end()
