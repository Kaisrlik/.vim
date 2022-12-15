set nocompatible
set ruler
set selection=exclusive

" Avoid some unwanted messages when we have to press enter
set shortmess=aI

" Allow finding vimrc in local files
set exrc

" syntax highlighting
syntax on

" automatic file type detection
filetype on
" automatic load of plugin for given file type
filetype plugin on
" automatic indention for given file type
filetype indent on

" shared clipboard with the system
set clipboard=unnamedplus


" history size
set history=1000
" line number
set number
" automatic line wrapping
set conceallevel=2
set hidden

" turn off bell signal
set noerrorbells
set novisualbell
set vb t_vb=

" grep program parameter
set grepprg=grep\ -nH\ $*

" number of lines shown before and after cursor
set scrolloff=3
set sidescroll=5
set textwidth=80
" Colorize extreme long lines
" set colorcolumn=160

set wildmenu
" use tab for command competition
set wildchar=<Tab>

" competition of the highest amount of command
set wildmode=longest:full,full

" ignore competition of given file types
set wildignore=Ui_*,*~,*.bak,*.log,*.o
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.git,

" automatic format
set formatoptions=croq1
"                 |||||
"                 ||||+ do not wrap 1 size word
"                 |||+ automatic formating for gq
"                 ||+ automatic comments for chars o/O
"                 |+ automatic comments on the new line
"                 + automatic wrapping of comments

" gq -> will use `par`
" set formatprg=par\ -w80rjq

set copyindent
set preserveindent

" round shift to size of tab
set shiftround

set noexpandtab
" size of tab
set tabstop=4
" tab will be converted to given number of spaces
set shiftwidth=4

set display=lastline
" set tittle of vim window
set title
" show match of matching parent
set showmatch
" highlight searched pattern
set hlsearch
" automatic move during writing
set incsearch

" support mouse in all modes
set mouse=a
" hide cursor while typing:w
set mousehide
" show pop-up on right click
set mousemodel=popup

set wrapmargin=0
" whole world line-break
set linebreak
"set wrap

" copy indention from last line
set autoindent
" sometimes extra indention
set smartindent

" set Visible given invisible characters
set list
set listchars=tab:▶\ 
set listchars+=trail:◥
" set listchars+=eol:¬
" set listchars+=extends:❯
" set listchars+=precedes:❮


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold default

" exten left-side by 4 char used for folding.
"set foldcolumn=4

let g:markdown_fold_style='nested'
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" show cursor line
set cursorline

set complete=.,w,b,u,t,i
set complete+=kspell
" set complete+=k~/vocabulary.txt
set dictionary+=$HOME/.vim/spell/en.utf-8.add
set spellfile=$HOME/.vim/spell/en.utf-8.add

" set compleopts
set completeopt=menuone,longest,noinsert,noselect

" more natural splits
set splitbelow
set splitright

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
