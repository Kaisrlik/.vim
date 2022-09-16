"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev qb bdelete
cnoreabbrev Qb bdelete
cnoreabbrev qt tabclose
cnoreabbrev Qt tabclose

noremap <F1> ""
map <C-down> gj
map <C-up> gk

" Buffer focus
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" map leader key
nnoremap , <NOP>
let mapleader = ","
nnoremap ; <NOP>
let maplocalleader = ";"

" togle tagbar
nnoremap <leader>1 :TagbarToggle<CR>

" format while document and return back
nmap <leader>g :normal mggg=G'g<cr>:delmarks g<cr>zz

" copy visually selected text to/out of systems clipboard
" vnoremap <C-c> "*y
vnoremap <C-c> :call system("wl-copy --trim-newline", @")<CR>

" call ag on current word
nnoremap <silent> <leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <C-p> :Ag<CR>

" searching for visually selected text
vnoremap // y/<C-R>"<CR>

" Allow saving of files with sudo when I forgot to start vim with bad privilages
cmap w!! w !sudo tee > /dev/null %

" Commenting block of code
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Toggle spell checking on and off with `,s`
" z=, 1z= take first
" set spell z= -> dictonary
" zg correct world, zuw, zug remove
nmap <silent> <leader>s :set spell!<bar> :set cursorline!<CR>
" Disable highlighting of Capital letter word located behind end of the sentence
set spellcapcheck=

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
" nnoremap N nzzzv
" nnoremap n Nzzzv

" Fast moving between buffers
map <F1> :bn<CR>
map <F2> :bp<CR>
" skok na předchozí chybové hlášení
map <F3> :cp<cr>
" skok na následující chybové hlášení
map <F4> :cn<cr>
" uložení aktuálně editovaného souboru a spuštění překladu
map <F5> :w<cr>:make<cr>
" výpis všech chybových hlášení překladače
map <F6> :cl<cr><cr>
" Nerdtree
map <F7> :NERDTree<CR>
map <F8> :Explore<CR>

" switch between headers and src
map <C-1> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file
map <C-5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen commnent
map <C-6> :Dox<CR>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

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

" set compleopts
set completeopt=menuone,longest,noinsert,noselect

" more natural splits
set splitbelow
set splitright

colorscheme dark
lua require("xeri")
