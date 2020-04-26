" ********************************
" PLUGINS
" ********************************

" Install Vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')

" Theme Gruvbox
Plug 'gruvbox-community/gruvbox'

" Indent Guides
Plug 'Yggdroot/indentLine'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Find in fils
Plug 'mhinz/vim-grepper'

" Vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

" Tabs & a Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Linting
Plug 'w0rp/ale'

" Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Sneaking — Efficient Moving
Plug 'justinmk/vim-sneak'
  
call plug#end()

" ********************************
" Set theme
" ********************************

" Display Italic
let g:gruvbox_italic=1
 
colorscheme gruvbox

" Enable True Color support
set termguicolors

" Gruvbox comes with both a dark and light theme.
set background=dark

" Gruvbox has 'hard', 'medium' (default) and 'soft' contrast options.
let g:gruvbox_contrast_dark='medium'


" ********************************
" Plugin settings
" ********************************


" Yggdroot/indentLine
" -------------------------------
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"
" -------------------------------

" vim-airline/vim-airline
" -------------------------------
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2
" -------------------------------

" justinmk/vim-sneak
" -------------------------------
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" -------------------------------

" mhinz/vim-grepper
" -------------------------------
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
" -------------------------------

" ctrlpvim/ctrlp.vim
" -------------------------------
" Leader+p opens Fuzzy Finder
nnoremap <Leader>p :CtrlP<CR>
" -------------------------------

 
" ********************************
" Basic settings
" ********************************

" Remapping leader key
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

" Setting Arrow Keys to Resize Panes
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
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
