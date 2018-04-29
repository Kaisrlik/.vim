" YCM
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_error_symbol = '>>'
let g:ycm_show_diagnostics_ui = 1

let g:ycm_python_binary_path = '/usr/bin/python3'

" YCM will query the UltiSnips plugin for possible completions of snippet triggers.
let g:ycm_use_ultisnips_completer = 1
"  compilation flags
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:clang_library_path = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/'

set backspace=2
set backspace=indent,eol,start

" scrolling in autocomplete menu with j and k, or c-j and c-k
" should work only when the menu has been entered either by tab or arrows
set completeopt+=noinsert
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("\<C-j>"))
inoremap <expr> <C-k> ((pumvisible() && !empty(v:completed_item))?("\<C-p>"):("\<C-k>"))

inoremap <expr> <tab> pumvisible() ? ("\<C-n>") : ("\<tab>")
" TODO: First <C-y> still firing popup menu
inoremap <expr> <cr>  pumvisible() ? ( exists('v:completed_item') && !empty(v:completed_item)
	\ ?("\<C-y>") :("\<C-y><cr>") ) :("<cr>")

let g:ycm_filepath_completion_use_working_dir = 1
" let g:ycm_extra_conf_globlist = ['~/XXX/XXx']
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" nnoremap <F5> :YcmForceCompileAndDiagnostics<cr> :lop<cr>

nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Autocommand for completing functions using UltiSnips
function! s:onCompleteDone()
  let abbr = v:completed_item.abbr
  let startIdx = stridx(abbr,"(")
  let endIdx = strridx(abbr,")")
  if endIdx - startIdx > 1
    let argsStr = strpart(abbr, startIdx+1, endIdx - startIdx -1)
    "let argsList = split(argsStr, ",")

    let argsList = []
    let arg = ''
    let countParen = 0
    for i in range(strlen(argsStr))
      if argsStr[i] == ',' && countParen == 0
        call add(argsList, arg)
        let arg = ''
      elseif argsStr[i] == '('
        let countParen += 1
        let arg = arg . argsStr[i]
      elseif argsStr[i] == ')'
        let countParen -= 1
        let arg = arg . argsStr[i]
      else
        let arg = arg . argsStr[i]
      endif
    endfor
    if arg != '' && countParen == 0
      call add(argsList, arg)
    endif
  else
    let argsList = []
  endif

  let snippet = '('
  let c = 1
  for i in argsList
    if c > 1
      let snippet = snippet . ", "
    endif
    " strip space
    let arg = substitute(i, '^\s*\(.\{-}\)\s*$', '\1', '')
    let snippet = snippet . '${' . c . ":" . arg . '}'
    let c += 1
  endfor
  let snippet = snippet . ')' . "$0"
  return UltiSnips#Anon(snippet)
endfunction
