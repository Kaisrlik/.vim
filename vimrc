set runtimepath+=$HOME/.vim/bundle/ultisnips
runtime autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()


imap \... …
noremap <F1> ""
map <C-down> gj
map <C-up> gk

" Nastavenie nekompatibilného režimu
set nocompatible

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

" Nastavenie histórie na 1000 príkazov
set history=1000
" Zapneme zobrazovanie čísel riadkov
set number
" Zapneme zabaľovanie znakov
set conceallevel=2
" Automatický presun na hľadaný výraz počas písania
set incsearch

" Pamätá si históriu undo a umožní prepínanie neuložených bufferov
set hidden

" Vypnutie pípnutí pri chybe
set noerrorbells
set novisualbell
set t_vb=

" Nastavenie príkazu pre grepovanie súborov
set grepprg=grep\ -nH\ $*

" Nastavenie počtu riadkov viditeľných nad a pod riadkom s kurzorom
set scrolloff=3
" Nastavenie počtu stĺpcov viditeľných pred a za kurzorom
set sidescroll=5
" Nastavenie šírky riadku na 80 znakov
set textwidth=160
" Nastavenie zvýraznenia dlhých riadkov
set colorcolumn=160

" Zobrazenie jednoduchého menu pri dopĺňaní s niekoľkými existujúcimi možnosťami
set wildmenu
" Na dopĺňanie príkazov sa používa klávesa tab
set wildchar=<Tab>

" Doplnenie čo najväčšej časti príkazu
set wildmode=longest:full,full

" Ignorovanie dopĺňania Ui_*
set wildignore=Ui_*


" Nastavenie automatického formátovania pri písaní
set formatoptions=croq1
"                 |||||
"                 ||||+ Zákaz zalamovania jednoznakových slov
"                 |||+ Automatické sformátovanie pri gq
"                 ||+ Automatické vloženie komentára pri použití o/O
"                 |+ Automatické vloženie komentára na nový riadok
"                 + Automatické zalamovanie v komentároch

" Kopírovanie štruktúry odsadenia pri automatickom odsadení
set copyindent

" Ponechanie štruktúry odsadenia pri jeho zmene
set preserveindent

" Zaokrúhlenie odsadenia na niekoľko tabov
set shiftround

set expandtab
" Nastavenie zobrazovanej šírky tabulátora
set tabstop=3
" Počet vložených medzier pri zväčšení odsadenia (automaticky sa prevedú na tabulátor)
set shiftwidth=3

" Zobrazenie čo najväčšej časti posledného riadku
set display=lastline
" Vim bude nastavovať titulok okna
set title
" Zobrazenie párových zátvoriek
set showmatch
" Zvýrazňovať vyhľadávanie
set hlsearch
colorscheme default

" Aktivovanie podpory myši vo všetkých režimoch
set mouse=a
" Skrytie kurzora počas písania
set mousehide
" Zobrazenie vyskakovacieho menu pri stlačení pravého myšítka
set mousemodel=popup

set wrapmargin=0
set linebreak

 " set Visible invisible characters
 set list

" mark line
au WinLeave * set nocursorline
au WinEnter * set cursorline
au WinEnter * set cursorline cursorcolumn
set cursorline


let g:clang_use_library=1
let g:clang_complete_macros=1
let g:clang_library_path="/usr/lib/"
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'
let g:clang_conceal_snippets=1
let g:clang_periodic_quickfix=1
let g:clang_hl_errors=1
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:snips_author = "Jan Kaisrlik"
let g:snips_company = "FEL CVUT"

let g:SuperTabDefaultCompletionType = "context"

imap <C-Space> <C-X><C-I>
imap <Nul> <C-X><C-I>


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

