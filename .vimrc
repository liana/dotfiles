" ================
" Ruby stuff
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

" Fuzzy finder ignore stuff that cant be opened, and generated files
let g:fuzzy_ignore="*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

"  MAPPINGS
let mapleader=","
map <leader>t :FuzzyFinderTextMate<CR>


"  GIT SETTINGS
map <Leader>gc :Gcommit -m ""<LEFT>
map <Leader>gac :Gcommit -m -a ""<LEFT>
map <Leader>gs :Gstatus<CR>

"  STARTUP
autocmd VimEnter * NERDTreeToggle 
autocmd VimEnter * wincmd p

" SETTINGS
set nocompatible
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent
set showmatch
set nowrap
set backupdir=/tmp
set directory=/tmp " Dont clutter my dirs up with swp and tmp files
set autoread
set wmh=0
set softtabstop=2
set viminfo+=!
set guioptions-=T
set guifont=Triskweline_10:h10
set et
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set laststatus=2  " Always show status line.
set number 
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on

" Move between tabs
" Note: tabnext = gt AND tabprevious = gT
" nnoremap <c-n> <esc>:tabnext<CR>
" nnoremap <c-p> <esc>:tabprevious<CR>
" nnoremap <silent> <C-t> :tabnew<CR>
" tip 199 (comments) - Open actual buffer in a tab and then close
nmap t% <C-W>T
nmap td :tabclose<CR>
nmap tn :tabnew<CR>

" Paste from X clipboard to vim
" Commented to use Visual blocks
vnoremap <C-C> "+y
"noremap <C-V> <ESC>"+gP
inoremap <C-V> <ESC>"+gPi


"  move text and rehighlight -- vim tip_id=224
"vnoremap > ><CR>gv
"vnoremap < <<CR>gv
" Enable TAB indent and SHIFT-TAB unindent
vnoremap <silent> <TAB> >gv
vnoremap <silent> <S-TAB> <gv


" A really status line
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
if &statusline == ''
  set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
end
set laststatus=2


" ========================================================================
" End of things set by me.
" ========================================================================
