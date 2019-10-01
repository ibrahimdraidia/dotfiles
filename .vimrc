filetype plugin indent on
syntax enable
"colorscheme industry

set number
set noswapfile
set background=dark
set cursorline
set showmatch
set nobackup
set encoding=utf-8
set clipboard=unnamed
set hlsearch
set mouse-=a

highlight BadWhitespace ctermbg=red guibg=red

" Batch config
au BufNewFile,BufRead *.bat match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.bat match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.bat set ff=dos 

" Python config
au BufNewFile,BufRead *.py match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix
let python_highlight_all = 1

" Handle file without extension
if !did_filetype()
	if getline(1) =~ '^#!.*perl$'
		setfiletype perl
	endif
endif
