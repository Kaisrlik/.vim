" UltiSnips
"
" load snippets from honza/vim-snippets
let g:UltiSnipsSneppetsDirectories = [ "~/.vim/bundle/vim-snippets/UltiSnips", "~/.vim/UltiSnips" ]
let g:UltiSnipsSneppetsDir = "~/.vim/after/snippets"

"
let g:snips_author = "Jan Kaisrlik"
" let g:snips_company = "Intel"
let g:snips_email = "jan.kaisrlik@intel.com"

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!
