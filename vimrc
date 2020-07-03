" Remap leader key
let mapleader=","
" Set standard file encoding
set encoding=utf8
" No special per file vim override configs
set nomodeline
" Stop word wrapping
set nowrap
  " Except... on Markdown. That's good stuff.
  autocmd FileType markdown setlocal wrap
" Adjust system undo levels
set undolevels=100
" Use system clipboard
set clipboard=unnamedplus
" Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells
" Number gutter
set number
" Use search highlighting
set hlsearch
" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

" Set relative line number
set relativenumber

" ********************************
" Basic settings
" ********************************

" Return to the last file opened
nmap <Leader><Leader> <c-^>
" Next / Previous Buffer (Tab)
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>
" Clear search highlights.
map <Leader><Space> :let @/=''<CR>
" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x
" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Source Vim config file.
map <Leader>sv :source $MYVIMRC<CR>

" Toggle relative line numbers and regular line numbers.
nmap <F6> :set invrelativenumber<CR>
