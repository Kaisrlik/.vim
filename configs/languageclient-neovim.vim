" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_autoStart=1
let g:LanguageClient_loggingLevel = 'ERROR'
" let g:LanguageClient_virtualTextPrefix = ''
let g:LanguageClient_loggingFile = '/tmp/languageclient.log'
let g:LanguageClient_serverStderr = '/tmp/languageserver.log'

" let g:LanguageClient_serverCommands = get(g:, 'LanguageClient_serverCommands', {})
" let g:LanguageClient_serverCommands.rust = ['~/.cargo/bin/rustup', 'run', 'stable', 'rls']
" let g:LanguageClient_serverCommands.python = ['/usr/local/bin/pyls']
" let g:LanguageClient_serverCommands.c = [ 'ccls', '--log-file=/tmp/vim/ccls.log',
" 	\ '--init={"cacheDirectory":"/tmp/vim/cache/ccls", "completion": {"filterAndSort": false}}' ]
" let g:LanguageClient_serverCommands.cpp  = g:LanguageClient_serverCommands.c
" let g:LanguageClient_serverCommands.cuda = g:LanguageClient_serverCommands.c
" let g:LanguageClient_serverCommands.objc = g:LanguageClient_serverCommands.c

let g:LanguageClient_serverCommands = {
    \ 'c': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'cuda': ['ccls', '--log-file=/tmp/cc.log'],
    \ 'objc': ['ccls', '--log-file=/tmp/cc.log'],
    \ }

"   \ 'sh': ['bash-language-server', 'start'],
" let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
" let g:LanguageClient_settingsPath = '~/.vim/settings.json'

" Mapping style
nnoremap <silent> gD :call LanguageClient#textDocument_definition()<CR>
" Command style
command! Definition call LanguageClient#textDocument_definition()
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nn <silent> <C-,> :call LanguageClient#textDocument_references({'includeDeclaration': v:false})<cr>


" bash linters does not work for this reason I'm keeping ale
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {'sh': ['bashate', 'language_server', 'shell', 'shellcheck']}
