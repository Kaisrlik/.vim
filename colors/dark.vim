" Vim color file

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "dark"
set notermguicolors

hi Normal ctermbg=237 guifg=#e0e0e0 guibg=#353538

hi SpecialKey term=bold ctermfg=239 guifg=Blue
hi NonText term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory term=bold ctermfg=4 guifg=Blue
hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
hi Search ctermbg=3 guibg=Yellow
hi MoreMsg term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg term=bold cterm=bold gui=bold
hi LineNr term=underline ctermfg=240 guifg=#484b60
hi Question term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold guifg=White guibg=Black
hi StatusLineNC term=reverse cterm=reverse gui=bold guifg=PeachPuff guibg=Gray45
hi VertSplit term=reverse cterm=reverse gui=bold guifg=White guibg=Gray45
hi Title term=bold ctermfg=3
hi String ctermfg=216 guifg=#fab387
" hi Operator
hi Visual term=reverse cterm=reverse gui=reverse
hi VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg term=standout ctermfg=1 gui=bold guifg=Red
hi WildMenu term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded term=standout ctermfg=4 ctermbg=7 guifg=Black guibg=#e3c1a5
hi FoldColumn term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Gray80

" Pmenu
hi Pmenu term=bold ctermfg=246 ctermbg=236
hi PmenuSel term=bold ctermfg=250 ctermbg=0

hi CursorLine ctermbg=236 guibg=#25252e cterm=none
hi CursorLineNr ctermbg=236 cterm=bold gui=bold guibg=#25252e

" Colors for syntax highlighting
hi Comment ctermfg=247 gui=italic guifg=#585b70
hi Constant ctermfg=216 guifg=#fab387
hi Special term=bold ctermfg=2 guifg=SeaGreen
hi Identifier cterm=none ctermfg=29 guifg=DarkCyan
hi Statement ctermfg=3 gui=none guifg=#cbcb41
hi Keyword ctermfg=3 gui=none guifg=#cbcb41

hi PreProc ctermfg=212 guifg=#f5c2e7
hi StorageClass ctermfg=180 guifg=#f9e2af
hi Type ctermfg=2 gui=none guifg=#10d040
hi Ignore cterm=bold ctermfg=7 guifg=bg
hi Error cterm=bold ctermfg=7 ctermbg=1
hi SpellBad ctermfg=7 ctermbg=1
hi Todo cterm=bold ctermfg=3 ctermbg=0 gui=bold guifg=Yellow guibg=Black
hi Function ctermfg=111 guifg=#89b4fa
hi Whitespace ctermfg=239 guifg=#454548

" git
hi diffRemoved ctermfg=9
hi diffAdded ctermfg=10
hi diffFile ctermfg=6
hi diffSubname cterm=bold ctermfg=3

" syn case ignore

" highlight Tab1 ctermbg=lightgreen guibg=#e0ffe0
" syn match Tab1 '\t'

" Show trailing whitepace and spaces before a tab:
syn match ExtraWhitespace /\s\+$\| \+\ze\t/
" po nasapni <01>44= oznacuje
syn match fixPrice         "<01>44=[^<01>]*"
hi def link fixPrice         Label
