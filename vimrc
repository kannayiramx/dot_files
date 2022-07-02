set t_Co=256              " Enable 256 color support
set nocompatible          " Disable old vi compatibility
set cursorline            " Highlight current line
set number                " Show line numbers
set numberwidth=1         " Set line number width (default is 4)

set ignorecase            " Ignore case while searching
set hlsearch              " Highlight matched keyword in the search
set incsearch             " Show partial match while searching
set smartcase             " use case if any caps used

colorscheme badwolf       " Setting colorscheme
set background=dark       " Setting colorscheme mode

set colorcolumn=80                 " Marking max column width
highlight ColorColumn ctermbg=200  " color for max coloumn width line

" Remapping scrolling one line at a time
" Rather than pressing CTRL-E to scroll use CTRL-J
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>

" Remapping movement keys b/w splits in vim
" Rather than presing CTRL-W L now press CTRL-L
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Specific indentation ruls for *.c files
autocmd Filetype c setlocal expandtab
autocmd Filetype c setlocal shiftwidth=3
autocmd Filetype c setlocal tabstop=3
autocmd Filetype c setlocal softtabstop=3
set autoindent

" Specific indentation ruls for html files
autocmd Filetype html setlocal expandtab
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype html setlocal tabstop=2 
autocmd Filetype html setlocal softtabstop=2

" filetype - will try to recognize type of file and set 'filetype' option
" plugin   - to load plugins for specific file types
" indent   - to load indents for specific file types
filetype plugin indent on

" Paste mode is used to turn of the autoindent feature to prevent unnecessary
" indentation of code while pasting code into vi
set pastetoggle=<F2>

" expandtab  - enter spaces when TAB is pressed
" tabstop    - column size to represent TAB
" shiftwidth - no of spaces to use for indentation
" autoindent - copy indent from curent line when starting new line
" smartindent- works for c files, smarter version of autointent
"            - dont use it when using file type based indentation
" softtabstop- when hitting backspace define how many spaces to delete
"
" To turn off any options enabled by set keyword, just prefix the parameter 
" with "no" EX: set nonumber, set noignorecase


" PlugInstall or PlugUpdate - to update/install plugin
" PlugUpgrade               - to update vim-plug
call plug#begin()
Plug 'preservim/nerdtree'               " NerdTree install

call plug#end()
