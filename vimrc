" Thx Miroslav Bendík and Tomas Baca for inspiration of theirs configs

" my  color scheme
colorscheme dark

set runtimepath+=$HOME/.vim/bundle/ultisnips
runtime autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()

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

imap \... …
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

" togle tagbar
nnoremap <leader>1 :TagbarToggle<CR>

" format while document and return back
nmap <leader>g :normal mggg=G'g<cr>:delmarks g<cr>zz

" call ag on current word
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" searching for visually selected text
vnoremap // y/<C-R>"<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Commenting block of code
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Toggle spell checking on and off with `,s`
" z=, 1z= take first
" set spell z= -> dictonary
" zg correct world, zuw, zug remove
nmap <silent> <leader>s :set spell!<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap N nzzzv
nnoremap n Nzzzv

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

" Nastavenie nekompatibilného režimu
set nocompatible

set ruler
set selection=exclusive

" Avoid some unwanted messages when we have to press enter
set shortmess=aI

" Hľadanie nastavení v lokálnych súboroch
set exrc

" Zapnutie zvýrazňovania syntaxe
syntax on

" Podpora automatickej detekcie typu súboru
filetype on
" Podpora automatického načítavania pluginov pre daný typ súboru
filetype plugin on
" Podpora automatického načítavania odsadzovacieho skriptu
filetype indent on

" shared clipboard with the system
set clipboard=unnamedplus

" Nastaveni historie na 1000 príkazu
set history=1000
" Zapne zobrazovani cisel radku
set number
" Zapne zabaľovanie znakov
set conceallevel=2

" Pamätá si históriu undo a umožní prepínanie neuložených bufferov
set hidden

" Vypnutie pípnutí pri chybe
set noerrorbells
set novisualbell
set vb t_vb=

" Nastaveni príkazu pro grepovani souboru
set grepprg=grep\ -nH\ $*

" Nastavenie počtu riadkov viditeľných nad a pod riadkom s kurzorom
set scrolloff=3
" Nastavenie počtu stĺpcov viditeľných pred a za kurzorom
set sidescroll=5
" Nastavenie šírky riadku na 80 znakov
set textwidth=80
" Nastavenie zvýraznenia dlhých riadkov
" set colorcolumn=160

" Zobrazenie jednoduchého menu pri dopĺňaní s niekoľkými existujúcimi možnosťami
set wildmenu
" Na dopĺňanie príkazov sa používa klávesa tab
set wildchar=<Tab>

" Doplnenie čo najväčšej časti príkazu
set wildmode=longest:full,full

" Ignorovani dopĺnovani *
set wildignore=Ui_*,*~,*.bak,*.log,*.o


" Nastavenie automatického formátovania pri písaní
" gw -> use onotther format
set formatoptions=croq1
"                 |||||
"                 ||||+ Zákaz zalamovania jednoznakových slov
"                 |||+ Automatické sformátovanie pri gq
"                 ||+ Automatické vloženie komentára pri použití o/O
"                 |+ Automatické vloženie komentára na nový riadok
"                 + Automatické zalamovanie v komentároch

" gq -> use par
set formatprg=par\ -w80rjq

" Kopírovanie štruktúry odsadenia pri automatickom odsadení
set copyindent

" Ponechanie štruktúry odsadenia pri jeho zmene
set preserveindent

" Zaokrúhlenie odsadenia na niekoľko tabov
set shiftround

set noexpandtab
" Nastavenie zobrazovanej šírky tabulátora
set tabstop=4
" Počet vložených medzier pri zväčšení odsadenia (automaticky sa prevedú na tabulátor)
set shiftwidth=4

" Zobrazenie čo najväčšej časti posledného riadku
set display=lastline
" Vim bude nastavovať titulok okna
set title
" show match of matching parent
set showmatch
" Zvýrazňovať vyhľadávanie
set hlsearch
" automatic move during writing
set incsearch

" Aktivovanie podpory myši vo všetkých režimoch
set mouse=a
" Skrytie kurzora počas písania
set mousehide
" Zobrazenie vyskakovacieho menu pri stlačení pravého myšítka
set mousemodel=popup

set wrapmargin=0
" zalamovani radku, cela slova
set linebreak
" zalamovani radku
"set wrap 

" copy indention from last line
set autoindent
" sometimes extra indention
set smartindent

 " set Visible invisible characters
set list
"set listchars=tab:>
set listchars=tab:▶\ 
"set listchars=tab:▶\ ,eol:¬


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold default

" exten left-side by 4 char used for folding.
"set foldcolumn=4

let g:markdown_fold_style='nested'
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" zviditelneni cursor line
set cursorline

set complete=.,w,b,u,t
" set complete-=i

"Disable scratch window
set completeopt=menu,menuone

" more natural splits
set splitbelow
set splitright

source ~/.vim/configs/vimrc
source ~/.vim/configs/ftdetect.vim
source ~/.vim/configs/fzf.vim
source ~/.vim/configs/indexing.vim
source ~/.vim/configs/ultisnip.vim
source ~/.vim/configs/vim-airline.vim
source ~/.vim/configs/ycm.vim
source ~/.vim/configs/ctrlp.vim
source ~/.vim/configs/calendar.vim
