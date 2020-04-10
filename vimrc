set nocompatible
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

filetype plugin indent on  " Load plugins according to detected filetype.
filetype on                " check file type
syntax enable                  " Enable syntax highlighting.

set number                 " Show line number
set autochdir        " Automatically change the env to the directory of current file
set autoread               " Reload when file is changed on disk

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set tabstop=4              " 
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set ruler                  " Show the current row and column
set display     =lastline  " Show as much as possible of the last line.
set noeb 		          	" No error beep
set novb						" NO visual error blink
set confirm                 " Pop confirm when process unsaved or readonly file
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

set paste                  " 
"set clipboard = unnamed    " Shared clipboard

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set showmatch              " Highlight matched parenthsis
set guioptions-=T        " Hide toolbar
set guioptions-=m        " Hide menu
set guioptions-=r
set guioptions-=l
set guioptions-=b

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set cursorcolumn           " Show the column of cursor
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set completeopt=longest,menu
"+++++++++++put all key map here
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
"+++++++++++key map end

"choose color scheme according to whether we use gui or tmerinal
if has('gui_running')
    colorscheme solarized
    set background=light
else
	colorscheme solarized
	set background=dark
endif

if has('gui_running')
    if has("win16") || has("win32") || has("win95") || has("win64")
        set guifont=Consolas:h17,Courier_New:h17
    else
        set guifont=MiscFixed\ Semi-Condensed\ 16
    endif
endif

set list                   " Show non-printable characters.
set listchars=tab:>-,trail:- " Show TAB and spaces



" Put all temporary files under the same directory.
set backup
set backupdir   =$VIM\\vimfiles\\files\\backup\\
set backupext   =.vimbackup
set backupskip  =
set swapfile
set directory   =$VIM\\vimfiles\\files\\swap\\
set updatecount =100
set undofile
set undodir     =$VIM\\vimfiles\\files\\undo\\
set viminfo     +=n$VIM\\vimfiles\\_viminfo

"all autocmd are listed below for managing
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"++++++++++++++++plugin manager below
"now vim-plug is used
call plug#begin('$VIM/vimfiles/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Completion by coc
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

let g:airline#extensions#tabline#enabled=1 "configure airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"+++++++++++++++plugin section end
