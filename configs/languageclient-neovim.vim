" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_autoStart=1
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
nnoremap gD :call LanguageClient#textDocument_definition()<CR>
nnoremap gd :call LanguageClient#textDocument_definition()<CR>
" Command style
command! Definition call LanguageClient#textDocument_definition()
" find global referencies
nnoremap gr :call LanguageClient#textDocument_references()<CR>
" go to on local referencies
nnoremap 2 :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>

nnoremap 1 :call LanguageClient#textDocument_hover()<CR>
nnoremap 3 :call LanguageClient#textDocument_rename()<CR>

" bash linters does not work for this reason I'm keeping ale
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {'sh': ['bashate', 'language_server', 'shell', 'shellcheck']}