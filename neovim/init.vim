set number
call plug#begin()
Plug 'roxma/nvim-completion-manager'
" Snippets plugins
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
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
call plug#end()

" Spell checking 
" set spell spelllang=en_us
" Set dictionary
" set dictionary+=/usr/share/dict/words
