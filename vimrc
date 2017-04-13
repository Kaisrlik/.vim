" Thx Miroslav Bendík for inspiration 

" my  color scheme
colorscheme dark

set runtimepath+=$HOME/.vim/bundle/ultisnips
runtime autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()


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


" Commenting block of code
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Toggle spell checking on and off with `,s`
" z=, 1z= take first
" set spell z= -> dictonary
" zg correct world, zuw, zug remove
nmap <silent> ,s :set spell!<CR>

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

" Nastavenie nekompatibilného režimu
set nocompatible

set ruler
set selection=exclusive

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

" Nastaveni historie na 1000 príkazu
set history=1000
" Zapne zobrazovani cisel radku
set number
" Zapne zabaľovanie znakov
set conceallevel=2
" Automatický presun na hľadaný výraz počas písania
set incsearch

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
"colorscheme default

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


 " set Visible invisible characters
set list
"set listchars=tab:>
set listchars=tab:▶\ 
"set listchars=tab:▶\ ,eol:¬


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fold default

" exten left-side by 3 char used for folding.
"set foldcolumn=3

let g:markdown_fold_style='nested'
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" zviditelneni cursor line
set cursorline

" Vim a assembler
augroup __asm__
   au!
   au BufRead,BufNewFile *.S set tw=0 nowrap
"   au BufRead,BufNewFile *.asm noremap <C-F9> :!nasm -f bin % -o output.com -l output.lst<CR>
"   au BufRead,BufNewFile *.asm noremap <F9> :!start output.com<CR>
augroup END

" function graph fold
au BufRead,BufNewFile *.trace set filetype=trace


" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,verilog let b:comment_leader = '// '
autocmd FileType sh,ruby,python           let b:comment_leader = '# '
autocmd FileType conf,fstab,cnf,make      let b:comment_leader = '# '
autocmd FileType tex,matlab               let b:comment_leader = '% '
autocmd FileType mail                     let b:comment_leader = '> '
autocmd FileType vim                      let b:comment_leader = '" '

"Disable scratch window
set completeopt=menu,menuone

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
let g:snips_author = "Jan Kaisrlik"
let g:snips_company = "FEE CTU in Prague"

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
" Jason Duell       jduell@alumni.princeton.edu     9/12/2001
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
   " If 'cscopetag' set, the commands ":tag" and CTRL-] as well as "vim -t" will
   " always use :cstag instead of the default :tag behavior.  Effectively, by
   " setting 'cst', you will always search your cscope databases as well as your
   " tag files.
   set cscopetag
   " If 'csto' is set to zero, cscope database(s) are searched first, followed
   " by tag file(s) if cscope did not return any matches.  If 'csto' is set to
   " one, tag file(s) are searched before cscope database(s).
   set csto=0

   " add any cscope database in current directory
   if filereadable("cscope.out")
       cs add cscope.out  
   " else add the database pointed to by environment variable 
   elseif $CSCOPE_DB != ""
       cs add $CSCOPE_DB
   endif

   " show msg when any other cscope db added
   set cscopeverbose
   """"""""""""" My cscope/vim key mappings
   " The following maps all invoke one of the following cscope search types:
   "   's'   symbol: find all references to the token under cursor
   "   'g'   global: find global definition(s) of the token under cursor
   "   'c'   calls:  find all calls to the function name under cursor
   "   't'   text:   find all instances of the text under cursor
   "   'e'   egrep:  egrep search for the word under cursor
   "   'f'   file:   open the filename under cursor
   "   'i'   includes: find files that include the filename under cursor
   "   'd'   called: find functions that function under cursor calls
   " To do the first type of search, hit 'CTRL-\', followed by one of the
   " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
   " search will be displayed in the current window.  You can use CTRL-T to
   " go back to where you were before the search.  
   nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	
   " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
   " makes the vim window split horizontally, with search result displayed in
   " the new window.
   nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-@>i :scs find i <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	
   " Hitting CTRL-space *twice* before the search type does a vertical 
   " split instead of a horizontal one (vim 6 and up only)
   nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>	
   nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-@><C-@>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>	
   nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>	

endif

" YCM
   let g:ycm_key_list_select_completion = ['<Down>']
   let g:ycm_key_list_previous_completion = ['<Up>']
   let g:ycm_key_invoke_completion = '<C-Space>'
   let g:ycm_error_symbol = '>>'
   let g:ycm_show_diagnostics_ui = 1

   " YCM will query the UltiSnips plugin for possible completions of snippet triggers.
   let g:ycm_use_ultisnips_completer = 1
   "  compilation flags
   let g:ycm_global_ycm_extra_conf='/home/kajza/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
   let g:clang_library_path = '/home/kajza/.vim/bundle/YouCompleteMe/third_party/ycmd/'

"bufferline"
   let g:bufferline_modified = '*'

"Airline"
   let g:airline_theme="kajza"

   "" if symbols are mess up
   if !exists('g:airline_symbols')
      let g:airline_symbols = {}
   endif

   " unicode symbols
   let g:airline_left_sep = '»'
   let g:airline_left_sep = '▶'
   let g:airline_right_sep = '«'
   let g:airline_right_sep = '◀'
   let g:airline_symbols.linenr = '␊'
   let g:airline_symbols.linenr = '␤'
   let g:airline_symbols.linenr = '¶'
   let g:airline_symbols.branch = '⎇'
   let g:airline_symbols.paste = 'ρ'
   let g:airline_symbols.paste = 'Þ'
   let g:airline_symbols.paste = '∥'
   let g:airline_symbols.whitespace = 'Ξ'
   let g:airline_symbols.space = "\ua0"
   let g:airline_powerline_fonts = 1
   "let g:Powerline_symbols = 'fancy'

   " Enable the list of buffers
   let g:airline#extensions#tabline#enabled=1

   " Show just the filename
   let g:airline#extensions#tabline#fnamemod=':t'

   " enable/disable displaying buffers with a single tab
   let g:airline#extensions#tabline#show_buffers = 1
   " denotes whether buffer numbers should be displayed
   let g:bufferline_show_bufnr = 1
   " denotes whether bufferline should automatically echo to the command bar
   let g:bufferline_echo = 1
