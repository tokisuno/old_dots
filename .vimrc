
"
set nocompatible

" enable file type detection
filetype on 

" enable plugins and load plugin for the detected file type
filetype plugin on 

" load an indent file for the detected file type
filetype indent on
" enable syntax highlighting
syntax on
syntax enable 
" theme
set t_Co=256
set background=dark
"...
    " vim hardcodes background color erase even if the terminfo file does
    " not contain bce (not to mention that libvte based terminals
    " incorrectly contain bce in their terminfo files). This causes
    " incorrect background rendering when using a color theme with a
    " background color.
    let &t_ut=''

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

" smart shit
" allows for searching for specifically capital letters
set smartcase
set smarttab
set smartindent
set autoindent 

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
" setting mouse for when i want to go noob mode
set mouse=a

" Plugins ----- {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Normal Plugins
Plugin 'VundleVim/Vundle.vim'"
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdtree'
Plugin 'preservim/vim-markdown'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'vim-airline/vim-airline'

" Development/Syntax Plugins
Plugin 'vim-syntastic/syntastic'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'mboughaba/i3config.vim'

" Writing Plugins
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'junegunn/goyo.vim'
Plugin 'sheerun/vim-polyglot'

" LaTeX
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'LukeSmithxyz/vimling'



call vundle#end()

colorscheme vim-monokai-tasty
" }}}

" Mappings ----- {{{
let mapleader=","
let maplocalleader = "-"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

nm <leader><leader>d :call ToggleDeadKeys()<CR>
imap <leader><leader>d <esc>:call ToggleDeadKeys()<CR>a
nm <leader><leader>i :call ToggleIPA()<CR>
imap <leader><leader>i <esc>:call ToggleIPA()<CR>a
" nm <F8> :call ToggleProse()<CR>

function! ToggleSpell(lang)
	if !exists("b:old_spelllang")
		let b:old_spelllang = &spelllang
		let b:old_spellfile = &spellfile
		let b:old_dictionary = &dictionary
	endif

	let l:newMode = ""
	if !&l:spell || a:lang != &l:spelllang
		setlocal spell
		let l:newMode = "spell"
		execute "setlocal spelllang=" . a:lang
		execute "setlocal spellfile=" . "~/.vim/spell/" . matchstr(a:lang, "[a-zA-Z][a-zA-Z]") . "." . &encoding . ".add"
		execute "setlocal dictionary=" . "~/.vim/spell/" . a:lang . "." . &encoding . ".dic"
		let l:newMode .= ", " . a:lang
	else
		setlocal nospell
		let l:newMode = "nospell"
		execute "setlocal spelllang=" . b:old_spelllang
		execute "setlocal spellfile=" . b:old_spellfile
		execute "setlocal dictionary=" . b:old_dictionary
	endif
	return l:newMode
endfunction
" }}}
nmap <silent> <F7> :echo ToggleSpell("en_ca")<CR>			" Toggle English spell.
nmap <silent> <F8> :echo ToggleSpell("es_cl")<CR>				" Toggle Spanish (Chile) spell.

imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

func! WordCount()
    echo vimtex#misc#wordcount()
endfunc
nnoremap <leader>wr :call WordCount()<CR>

nnoremap <F5> "=strftime("%Y-%m-%d")<CR>P

" let g:vimtex_fold_enabled=1
let g:tex_flavor='latex'

let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}

let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_automatic = 1

nnoremap <leader>f :noh<CR>

" goes back to normal (kinda shit imo)
inoremap jj <esc>
 

" centers word vertically when moving to the next word in a word search
nnoremap n nzz
nnoremap N Nzz

nnoremap <C-g> :Goyo<CR>
nnoremap <leader>m :set relativenumber!<CR>

nnoremap <leader>c :!pandoc -t latex % -o file.pdf<CR>

autocmd BufNewFile,BufRead *.md nnoremap j gj
autocmd BufNewFile,BufRead *.md nnoremap k gk

autocmd BufNewFile,BufRead *.tex nnoremap j gj
autocmd BufNewFile,BufRead *.tex nnoremap k gk
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
" augroup filetype_vim
"     autocmd!
"     autocmd FileType vim setlocal foldmethod=marker
" augroup END



autocmd Filetype tex setl updatetime=1

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown set cursorline
" autocmd FileType markdown set conceallevel=2
autocmd Filetype markdown setlocal spell
autocmd FileType markdown setlocal spelllang=en_gb
autocmd Filetype markdown setlocal linebreak 
autocmd Filetype markdown setlocal noexpandtab      
" autocmd Filetype markdown setlocal formatoptions=1
autocmd Filetype markdown setlocal wrap   

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

aug i3status_ft_detection                        
    au!
    au BufNewFile,BufRead ~/.config/i3status/config set        filetype=i3config
aug end

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

" lol

" }}}
