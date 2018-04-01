source $VIMRUNTIME/mswin.vim
behave mswin

autocmd FileType sql let b:vimpipe_command="sqlplus -s /"

set nocompatible
set encoding=utf-8
set history=9999     " big old history
set number           " turn on line numbers
set numberwidth=5    " We are good up to 99999 lines
set tabstop=4        " set tabulator length to 4 columns
set nowrap           " do not wrap line
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
set showmatch        " highlight matching [{()}]
set guioptions+=b    " horizontal scrollbar
set backspace=2 " make backspace work like most other apps
set hlsearch

 " Backup settings
set backup
set backupdir=C:\\Temp
set dir=C:\\Temp

" Smart tabs
set noexpandtab
set autoindent
set cindent
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" font
if has('gui_running')
  set guifont=Courier_New:h10
endif

let mapleader=","    " leader is comma

filetype plugin on

colorscheme sourcerer

syntax on
filetype on
au BufNewFile,BufRead *.sql set filetype=plsql
au BufNewFile,BufRead *.trg set filetype=plsql
au BufNewFile,BufRead *.pck set filetype=plsql
au BufNewFile,BufRead *.tps set filetype=plsql
au BufNewFile,BufRead *.vim set filetype=vim

map <F2> aSELECT * FROM 
map <F3> aDBMS_OUTPUT.PUT_LINE(


" tuning for gVim only
if has('gui_running')
    set columns=160 lines=46 " GUI window geometry
    set number " show line numbers
endif

" Let me choose the statusbar
let g:vorax_output_force_overwrite_status_line = 0

" Let the statusbar as it is for inactive windows
let g:airline_inactive_collapse=0

