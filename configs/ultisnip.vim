" UltiSnips
"
let g:UltiSnipsSneppetsDir = "~/.vim/UltiSnips"

"
let g:snips_author = "Jan Kaisrlik"
let g:snips_company = "XXXCompany"

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!
