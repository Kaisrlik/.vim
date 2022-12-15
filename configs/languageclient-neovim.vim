" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_autoStart=0
let g:LanguageClient_loggingLevel = 'ERROR'
" let g:LanguageClient_virtualTextPrefix = ''
let g:LanguageClient_loggingFile = '/tmp/languageclient.log'
let g:LanguageClient_serverStderr = '/tmp/languageserver.log'

let g:LanguageClient_serverCommands = get(g:, 'LanguageClient_serverCommands', {})
let g:LanguageClient_serverCommands.rust = ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
let g:LanguageClient_serverCommands.python = ['/usr/local/bin/pyls']
let g:LanguageClient_serverCommands.c = [ 'ccls', '--log-file=/tmp/ccls.log',
	\ '--init={"cacheDirectory":"/tmp/ccls.cache", "completion": {"filterAndSort": false}}' ]
let g:LanguageClient_serverCommands.cpp  = g:LanguageClient_serverCommands.c
let g:LanguageClient_serverCommands.cuda = g:LanguageClient_serverCommands.c
let g:LanguageClient_serverCommands.objc = g:LanguageClient_serverCommands.c

"   \ 'sh': ['bash-language-server', 'start'],
" let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
" let g:LanguageClient_settingsPath = '~/.vim/settings.json'

" Mapping style
nnoremap gt <Plug>(lcn-type-definition)
nnoremap gd <Plug>(lcn-definition)
" Command style
" find global referencies
nnoremap gr <Plug>(lcn-references)
" go to on local referencies
nnoremap 2 :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>

nnoremap 1 <Plug>(lcn-hover)
nnoremap 3 <Plug>(lcn-rename)
nnoremap gi <Plug>(lcn-implementation)
nnoremap ga <Plug>(lcn-code-action)
nnoremap gj <Plug>(lcn-diagnostics-next)<cr>
nnoremap gk <Plug>(lcn-diagnostics-prev)<cr>

" map functions only in supported buffers
function LC_maps()
	if has_key(g:LanguageClient_serverCommands, &filetype)
		nmap <buffer> <silent> K <Plug>(lcn-hover)
	endif
endfunction
autocmd FileType * call LC_maps()

" set completefunc=LanguageClient#complete
" inoremap <C-Space> <C-G>u<C-X><C-U>
set omnifunc=LanguageClient#complete
inoremap <C-Space> <C-x><C-o>

" bash linters does not work for this reason I'm keeping ale
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {'sh': ['bashate', 'language_server', 'shell', 'shellcheck']}
