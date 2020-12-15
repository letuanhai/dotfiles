" =============================================================================
"   PLUGINS
" =============================================================================
call plug#begin('~/.vim/plugged')

" Load plugins
"" Per file editor config
""Plug 'ciaranm/securemodelines'
""Plug 'editorconfig/editorconfig-vim'
"
" Search
""Plug 'romainl/vim-cool'               " Disables highlight when search is done
"Plug 'haya14busa/incsearch.vim'       " Better incremental search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Movement
" Plug 'justinmk/vim-sneak'
" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch-easymotion.vim'
"Plug 'wikitopian/hardmode'            " Disable arrow keys and similar

" Text Manipulation
"Plug 'tpope/vim-sensible'             " Some better defaults
"Plug 'tpope/vim-unimpaired'           " Pairs of mappings
"Plug 'tpope/vim-surround'             " Surround with parentheses & co
Plug 'tpope/vim-commentary'            " To comment stuff out
"Plug 'terryma/vim-multiple-cursors'   " Multiple cursors like sublime
Plug 'godlygeek/tabular'              " For alignment
"Plug 'junegunn/vim-easy-align'        " Easier alignment
"Plug 'foosoft/vim-argwrap'            " convert lists of arguments into blocks of arguments
"Plug 'tpope/vim-repeat'               " Adds repeat thorugh . to other packages
"Plug 'tpope/vim-speeddating'          " Dates in vim
" Plug 'preservim/nerdcommenter'        " Comment functionality

" GUI enhancements
Plug 'itchyny/lightline.vim'          " Better Status Bar
" Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'mhinz/vim-startify'             " Better start screen
" Plug 'scrooloose/nerdtree'            " File explorer

"Plug 'sjl/gundo.vim'                  " Undo Tree
"Plug 'simnalamburt/vim-mundo'         " Gundo fork
"Plug 'majutsushi/tagbar'              " Pane with tags
Plug 'machakann/vim-highlightedyank'  " Highlight yanks
Plug 'andymass/vim-matchup'           " Highlight corresponding blocks e.g. if - fi in bash
Plug 'kshenoy/vim-signature'          " Show marks in the gutter
Plug 'yggdroot/indentline'            " Shows indentation levels
"Plug 'tpope/vim-eunuch'               " Unix helpers
" Git GUI
Plug 'airblade/vim-gitgutter'         " Git gutter
"Plug 'tpope/vim-fugitive'             " Git interface
Plug 'xuyuanp/nerdtree-git-plugin'    " Show status of files in NerdTree
"Plug 'tveskag/nvim-blame-line'        " Add git blame on line

" Tmux GUI
"Plug 'tmux-plugins/vim-tmux-focus-events'
"Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
" Plug 'ervandew/supertab'
" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'                        " Linting engine
Plug 'maximbaz/lightline-ale'          " Lightline + Ale

" Syntactic language support
" Plug 'nvim-treesitter/nvim-treesitter' " LSP syntax highlighting - (Note:
" needs neovim >= 0.5)
"Plug 'plasticboy/vim-markdown'         " Markdown support
"Plug 'mzlogin/vim-markdown-toc'        " Markdown TOC builder
"Plug 'cespare/vim-toml'                " TOML support
"Plug 'stephpy/vim-yaml'                " YAML support
"Plug 'elzr/vim-json'                   " Better JSON support
"Plug 'rust-lang/rust.vim'              " Rust support
"Plug 'glench/vim-jinja2-syntax'        " Jinja2 support
"Plug 'lervag/vimtex'                   " Latex support
"Plug 'pearofducks/ansible-vim'         " Ansible support
"Plug 'mechatroner/rainbow_csv'         " CSV color coding
"Plug 'ap/vim-css-color'                " CSS colors
"Plug 'frazrepo/vim-rainbow'                " Rainbow parentheses
"Plug 'vim-pandoc/vim-pandoc'           " Pandoc support
"Plug 'vim-pandoc/vim-pandoc-syntax'    " Pandoc syntax
"Plug 'chrisbra/colorizer'              " Colorize color codes
"Plug 'vim-scripts/applescript.vim'
Plug 'norcalli/nvim-colorizer.lua'     " Faster colorzier (only neovim, reconsider)
"Plug 'liuchengxu/vista.vim'
"Plug 'vim-python/python-syntax'
" Plug 'sentientmachine/pretty-vim-python'

" Colorscheme
"Plug 'gruvbox-community/gruvbox'
Plug 'cocopon/iceberg.vim'

" Writing
"Plug 'junegunn/goyo.vim'               " Distraction free mode
"Plug 'junegunn/limelight.vim'          " Focus on current paragraph
"Plug 'rhysd/vim-grammarous'            " GrammarCheck using LanguageTool
"Plug 'ron89/thesaurus_query.vim'       " Synonym query

" Other
Plug 'liuchengxu/vim-which-key'

call plug#end()


" =============================================================================
" Plugin settings
" =============================================================================
"
" META: Disabled by default
let g:gitgutter_enabled = 0          " vim-gitgutter
let g:indentLine_enabled = 0         " indentline
let g:SignatureEnabledAtStartup = 0  " vim-signature
"let g:startify_custom_header =[]     " Disable startify header
"" Enabled by default
"let g:rainbow_active = 1
"
" Yggdroot/indentLine
" -------------------------------
let g:indentLine_char = "⟩"
" -------------------------------
"
" vim-airline/vim-airline
" -------------------------------
"let g:airline_theme='minimalist'
"let g:airline#extensions#tabline#enabled=1
"let g:airline_powerline_fonts=1
"set laststatus=2
" -------------------------------

" justinmk/vim-sneak
" -------------------------------
"let g:sneak#s_next = 1
"nmap f <Plug>Sneak_f
"nmap F <Plug>Sneak_F
"xmap f <Plug>Sneak_f
"xmap F <Plug>Sneak_F
"omap f <Plug>Sneak_f
"omap F <Plug>Sneak_F
" -------------------------------

" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_enabled = 1
" For quick startup
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" Easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
"let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
"" Turn on case-insensitive feature
"let g:EasyMotion_smartcase = 1
"map <Leader> <Plug>(easymotion-prefix)

" vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " Vi compatible mode is disabled so that Vim things work

" =============================================================================
"  EDITOR SETTINGS
" =============================================================================

" Colorscheme
set termguicolors
set background=light
colorscheme iceberg
let g:python_highlight_all = 1
syntax on           " enable syntax processing

" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " show line numbers
set relativenumber      " show relative numbering
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype specific plugin files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set laststatus=2        " Show the status line at the bottom
set mouse+=a            " A necessary evil, mouse support
set noerrorbells visualbell t_vb=    "Disable annoying error noises
set splitbelow          " Open new vertical split bottom
set splitright          " Open new horizontal splits right
set linebreak           " Have lines wrap instead of continue off-screen
set scrolloff=12        " Keep cursor in approximately the middle of the screen
" set updatetime=100      " Some plugins require fast updatetime
set ttyfast             " Improve redrawing

" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden              " Allows having hidden buffers (not displayed in any window)

" Sensible stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set backspace=indent,eol,start     " Make backspace behave in a more intuitive way
" nmap Q <Nop>
" 'Q' in normal mode enters Ex mode. You almost never want this.
" Unbind for tmux
map <C-a> <Nop>
map <C-x> <Nop>

"Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case in searches by default
set smartcase           " But make it case sensitive if an uppercase is entered
" turn off search highlight
"vnoremap <C-h> :nohlsearch<cr>
"nnoremap <C-h> :nohlsearch<cr>
" Ignore files for completion
set wildignore+=*/.git/*,*/tmp/*,*.swp

" Undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir


" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" Open/closes folds
nnoremap , za
set foldmethod=indent   " fold based on indent level
" Other acceptable values are marker, manual, expr, syntax, diff.
" Run :help foldmethod to find out what each of those do.

" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" Jump to start and end of line using the home row keys
map H ^
map L $

" (Shift)Tab (de)indents code
vnoremap <Tab> >
vnoremap <S-Tab> <

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Very magic by default
" nnoremap ? ?\v
" nnoremap / /\v
" cnoremap %s/ %sm/


" Leader
let mapleader=" "       " leader is space

" Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These lines change the cursor from block cursor mode to vertical bar cursor mode when using tmux.
" Without these lines, tmux always uses block cursor mode.
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" =============================================================================
"   CUSTOM SHORTCUTS  (LEADER, FN, &c)
" =============================================================================

" Modifiers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <C-g> :Goyo<CR>
"map <C-p> :Files<CR>
"map <C-h> :History<CR>

" Leader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <Nothing> -- vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" , -- Clear search highlights
map <Leader>, :let @/=''<CR>

"  ;  --   FZF
nmap <Leader>; :Buffers<CR>

"  <Space>  --  <leader><leader> toggles between buffers
nnoremap <Leader><Leader> <c-^>

"  - |     --  Split with leader
nnoremap <Leader>- :sp<CR>
nnoremap <Leader>\| :vsp<CR>

"  w wq q   --  Quick Save
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>Q :q!<CR>

"  y d p P   --  Quick copy paste into system clipboard
nmap <Leader>y "+y
nmap <Leader>d "+d
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"  oa oc oe ofog om on op ot os    --  Miscellaneous toggles
nnoremap <Leader>oa :ALEToggle<CR>
" nnoremap <Leader>ob :ToggleBlameLine<CR>
" nnoremap <Leader>oc :ColorToggle<CR>
nnoremap <Leader>oe :NERDTreeToggle<CR>
nnoremap <Leader>of :ALEfixToggle<CR>
nnoremap <Leader>og :GitGutterToggle<CR>
nnoremap <Leader>oi :IndentLinesToggl<CR>
" nnoremap <Leader>ol :ColorColumnToggle<CR>
nnoremap <Leader>om :SignatureToggle<CR>
" nnoremap <Leader>on :LineNumberToggle<CR>
" nnoremap <Leader>op :RainbowToggle<CR>
" nnoremap <Leader>ot :Vista!!<CR>
nnoremap <Leader>os :setlocal spell! spelllang=en_us<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

"  e g H -- FZF
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>e :Files<CR>
nnoremap <Leader>H :History<CR>

" hjkl  s j k t / ? g/   -- EasyMotion
" map <Leader>h <Plug>(easymotion-linebackward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>l <Plug>(easymotion-lineforward)

" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)
" " vim-sneak behaviour through easymotion
" map <Leader>t <Plug>(easymotion-t2)
" nmap <Leader>t <Plug>(easymotion-overwin-t2)
" map <Leader>s <Plug>(easymotion-f2)
" nmap <Leader>s <Plug>(easymotion-overwin-f2)

" map <Leader>/ <Plug>(incsearch-easymotion-/)
" map <Leader>? <Plug>(incsearch-easymotion-?)
" map <Leader>g/ <Plug>(incsearch-easymotion-stay)

" `  `v  `z  rv  -- edit vimrc/zshrc and load vimrc bindings
" nnoremap <Leader>` :Startify<CR>
nnoremap <Leader>`z :vsp ~/.zshrc<CR>
nnoremap <Leader>`v :vsp ~/.config/nvim/init.vim<CR>
nnoremap <Leader>rv :source ~/.config/nvim/init.vim<CR>

" FN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spellcheck Keyboard shorcut (https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys)
map <F5> :setlocal spell! spelllang=en_us<CR>
" map <F7> :NERDTreeToggle<CR>
" map <F8> :Vista!!<CR>
map <F6> :set invrelativenumber<CR>

" Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Next / Previous Buffer (Tab)
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" =============================================================================
"   LOCAL CONFIG
" =============================================================================

" Setup complier environment
let g:python3_host_prog = '~/.neovim/py3/bin/python'
let g:node_host_prog = '~/.neovim/node/bin/neovim-node-host'

" local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
