" Default 
syntax on
filetype plugin indent on
set number

" Tab specific option
set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" disable line too long flake8 python
let g:syntastic_python_flake8_args="--ignore=E501"

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Nerdtree map
map <C-e> :NERDTreeToggle<CR>
" nerdtree filter file extensions
let NERDTreeIgnore = ['\.pyc$']

" Tabularize map
let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" setup neco-ghc for haskell
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']} " enable autocompletions
let g:necoghc_enable_detailed_browse = 1

" Set default python interpreter
" let g:syntastic_python_python_exec = 'python3'

" enable indent plugin
" let g:indent_guides_enable_on_vim_startup = 1

" Manage plugins with Plug
call plug#begin()
Plug 'roxma/nvim-completion-manager'
" Install command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Nerd commenter
Plug 'scrooloose/nerdcommenter'
" Fuzzer file searcher
Plug 'ctrlpvim/ctrlp.vim'
" Replace neocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Supertab
Plug 'ervandew/supertab'
" Tabularize
Plug 'godlygeek/tabular'
" Snippets plugins
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" vimproc
Plug 'Shougo/vimproc.vim'
" syntastic
Plug 'vim-syntastic/syntastic'
" Rust lang:
" - cargo install racer
" - rustup component add rust-src
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'roxma/nvim-cm-racer'
" Javascript lang
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
" Ruby lang
Plug 'roxma/ncm-rct-complete'
" Haskell
"Plug 'neovimhaskell/haskell-vim.git'
Plug 'eagletmt/neco-ghc'
" javascipt reactjs 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" virtualenv for python
"Plug 'jmcantrell/vim-virtualenv'
"Plug 'davidhalter/jedi-vim'
Plug 'lambdalisue/vim-pyenv'
" git stuff
Plug 'airblade/vim-gitgutter' " add diff mark to the left
Plug 'tpope/vim-fugitive'
" vim themes
Plug 'dracula/vim', { 'as': 'dracula' }
" Indent 
" Plug 'nathanaelkane/vim-indent-guides'
" indent line
Plug 'Yggdroot/indentLine'
call plug#end()

" Spell checking 
" set spell spelllang=en_us
" Set dictionary
" set dictionary+=/usr/share/dict/words

" Dracula theme
colorscheme dracula
" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
