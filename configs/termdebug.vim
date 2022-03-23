" start termdebug
nmap <leader>t :packadd termdebug<CR>:Termdebug<CR>

" " toggle break
" map <C-b> :Break<CR>
" map <C-o> :Over<CR>
" map <C-c> :Continue<CR>
" map <C-r> :Run<CR>
" map <C-n> :Next<CR>
" map <C-s> :Stop<CR>
" map <C-f> :Finish<CR>
" " Evaluate expression under cursor
" " default is K
" map <C-e> :Evaluate<CR>

hi debugPC term=reverse ctermbg=darkblue guibg=darkblue
hi debugBreakpoint term=reverse ctermbg=red guibg=red

" show asm window by setting number of lines
let g:termdebug_disasm_window = 15

" own shortucuts sends to dbg
" map ,w :call TermDebugSendCommand('where')<CR>
let g:termdebug_wide = 80
