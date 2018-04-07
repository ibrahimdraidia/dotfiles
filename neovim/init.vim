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

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Nerdtree map
map <C-e> :NERDTreeToggle<CR>

" Tabularize map
let g:haskell_tabular = 1
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" setup neco-ghc for haskell
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']} " enable autocompleions
let g:necoghc_enable_detailed_browse = 1

" Manage plugins with Plug
call plug#begin()
Plug 'roxma/nvim-completion-manager'
" Install command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Nerdtree
Plug 'scrooloose/nerdtree'
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
call plug#end()

" Spell checking 
" set spell spelllang=en_us
" Set dictionary
" set dictionary+=/usr/share/dict/words
