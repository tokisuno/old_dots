" disable compatibility with vi which can cause unexpected issue 
set nocompatible

" enable file type detection
filetype on 

" enable plugins and load plugin for the detected file type
filetype plugin on 

" load an indent file for the detected file type
filetype indent on

" enable syntax highlighting
syntax on

" theme
set t_Co=256
set background=dark
colorscheme PaperColor

" add line number (idk yet)
set number

" highlight cursor line under the cursor horizontally
set cursorline

" shift = 4 spaces
set shiftwidth=4

" tab = 4 columns
set tabstop=4

" use space chars instead of tabs
set expandtab

" don't save backup files
set nobackup

" line scroll doesn't go below/above N when scrolling
set scrolloff=10

" no wrap (personally i like text wrapping)
" set nowrap

" while searching through a file incrementally highlight matching chars 
set incsearch

" enable indentation
set breakindent

" fixing text wrapping (i like it)
set wrap linebreak nolist

" allows for searching for specifically capital letters
set smartcase

" shows partial command you type in the last line of the screen
set showcmd

" shows you are on the last line
set showmode

" show matching words during a search
set showmatch

" use highlighting while doing a search
set hlsearch

" set commands to save in history
set history=100

" enable auto completion menu after pressing tab
set wildmenu

" make wildmenu behave like similar to bash completion
set wildmode=list:longest

"wildmenu will ignore these file extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Plugins ----- {{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'preservim/vim-markdown'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'mzlogin/vim-markdown-toc'
call plug#end()

" }}}

" Mappings ----- {{{
let mapleader=","
" idk wtf this does
inoremap jj <esc>
 
" nnoremap <leader>g A

" centers word vertically when moving to the next word in a word search
nnoremap n nzz
nnoremap N Nzz

" yank from cursor end of line
nnoremap Y y$

" press leader key to go back to last cursor position
nnoremap <leader>, ``

" spacebar types in : in command mode
nnoremap <space> : 

" nerdtree shit
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" split window remapping stuff
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" will create a new line and instantly exit out of insert mode after
nnoremap o o<esc>
nnoremap O O<esc>

" resize split windows using arrow keys
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" going to end of fold
nmap z] zo]z
nmap z[ zo[z
" }}}

" Vimscript ----- {{{

" enables code folding
" use the marker method of folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" show cursor only in active split
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline

" by how the comments that are written you can tell i didn't write this kekw
" If GUI version of Vim is running set these options.
if has('gui_running')

    " Set the background tone.
    set background=dark

    " Set the color scheme.
    colorscheme PaperColor

    " Set a custom font you have installed on your computer.
    " Syntax: <font_name>\ <weight>\ <size>
    set guifont=Monospace\ Regular\ 12

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the left-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

    " Map the F4 key to toggle the menu, toolbar, and scroll bar.
    " <Bar> is the pipe character.
    " <CR> is the enter key.
    nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>

endif

"}}}

" Status Line ----- {{{

" status bar code goes here 

" }}}