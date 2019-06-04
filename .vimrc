" UI Stuff
set number              " show line numbers
set cul                 " highlight current line
set ignorecase          " Make searches case-insensitive.
set ruler               " Always show info along bottom.
set relativenumber      " show line relative numbers

" Text formatting
set autoindent          " auto-indent
set tabstop=4           " tab spacing
set shiftwidth=4        " keep consistent
set softtabstop=4       " keep consistent
set expandtab           " use spaces instead of tabs
set nowrap              " don't wrap text
set fileformat=unix

" Customized commands
" Run python3.x with interactive mode
command R !python3 -i %
nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" Color scheme
color desert
