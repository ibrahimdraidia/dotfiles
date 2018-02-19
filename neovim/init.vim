set number
" Install vim-plug for neovim
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
