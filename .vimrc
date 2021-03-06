
" ---> Block the use of arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>


" ---> BASIC CONFIG
set incsearch   " ignore case search
set hlsearch    " highlight search results
set ignorecase 
set cursorline  " cursorline
set number      " line numbers
set showmatch   " highlight matching
set foldmethod=indent
let g:markdown_folding = 1
set splitbelow
set splitright

syntax on       " syntax highlighting
filetype indent on " file specific indenting   
set wildmenu    " visual menu for looking at files

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
filetype on
filetype plugin on
set bs=2 " add backspace matching

" key mappings while in insert mode.
imap jj <esc>  " stop pressing esc all the time
imap kk <esc>  " stop pressing esc all the time
imap jk <esc>  " stop pressing esc all the time
imap hh #

" sensible window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" bracket autoclose
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

noremap <leader>0 :split ~/.config/.vimrc
nnoremap <leader>1 :NERDTreeToggle<CR>
nnoremap <leader>2 :FZF<CR>
nnoremap <leader>3 :%! autopep8 -
nnoremap <leader>4 ::let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>
nnoremap <leader>5 :TagbarToggle<CR>
nnoremap <leader>6 :%! ctags R . 
nnoremap <leader>7 :Ag<CR>
nnoremap <leader>= zr
nnoremap <leader>- zm
vnoremap g= :!sqlformat --reindent --keywords upper --identifiers lower -<cr>

" ----> ADVANCED CONFIG
"  speed
set lazyredraw

" spelling
set spell       " turn spell check on/off
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
colorscheme molokai   
hi clear SpellBad
hi SpellBad cterm=underline,bold
hi SpellBad ctermfg=015 ctermbg=009 cterm=bold guibg=#ff0000 guifg=#000000 gui=bold

" backups stuff
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp*,/private/tmp/*
set directory=/~/.vim-tmp,~/.tmp,~/tmp,var/tmp,tmp
set writebackup

"filetype specific config
filetype plugin indent on

autocmd filetype python call tagbar#autoopen(0)
autocmd filetype markdown call tagbar#autoopen(0)
autocmd filetype c call tagbar#autoopen(0)
" Add support for markdown files in tagbar.
" let g:md_ctags_bin=fnamemodify(stdpath('config')."~/.config/nvim/tools/markdown2ctags.py", ":p")
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : "$HOME/.vim/plugged/markdown2ctags/markdown2ctags.py",
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
    \ }

" ---> PLUGINS
autocmd VimEnter * RainbowToggle

" COC config
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
	  \ pumvisible() ? "\<C-n>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
	execute 'h '.expand('<cword>')
  else
	call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor 
 autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" remap 
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


if has('mac')
        " Dash shizzle
        :nmap <silent> <leader>d <Plug>DashSearch
endif
