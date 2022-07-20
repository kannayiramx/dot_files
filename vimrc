" Picking & setting a runtimepath for vim (this will set ~/.vim dir as rtp)
" runtimepath is the list of files/folders vim will look for config settings
let $RTP=split(&runtimepath, ',')[0]

" Setting vimrc file path
let $RC="$HOME/.vim/vimrc"

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

" filetype - will try to recognize type of file and set 'filetype' option
" plugin   - to load plugins for specific file type
" indent   - to load indentation rules for specific file type
" syntax   - to enable syntax highlighting(colouring) specific to file type
filetype plugin indent on
syntax on

" To fix not-working backspace key in insert mode
set backspace=indent,eol,start

" To fix the error thrown while opening a new file when changes in the current
" file has not yet saved
set hidden

" Remapping scrolling one line at a time
" Rather than pressing CTRL-E to scroll use CTRL-J
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>

" Remapping movement keys b/w splits in vim
" Rather than presing CTRL-W L now press CTRL-L
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Specific indentation ruls for html files
autocmd Filetype html setlocal expandtab
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype html setlocal tabstop=2 
autocmd Filetype html setlocal softtabstop=2

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


""""" NERD-TREE CONFIGURATIONS """""
" Open/Close Nerd tree CTRL-n
nmap <C-n> :NERDTreeToggle<CR>

" Start NERDTree whenever vim openes and leave the cursor in it.
" autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


