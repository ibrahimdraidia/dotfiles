" enable syntax highlighting
syntax enable

filetype indent plugin on

" show line numbers
set number

" set tabs to have four spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the current cursor line
set cursorline

" show the matching part on the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" set background dark
highlight Normal guibg=black guifg=white
set background=dark
