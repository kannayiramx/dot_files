" Specific formating rules for python
" This file will be added over the pre-defined configurations
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

set colorcolumn=80                   " marking max column for width line
highlight ColorColumn ctermbg=250    " specifying color for width line

" Ignore these files/folders while searching files using find command
setlocal wildignore=*/__pycache__/*,*.pyc
