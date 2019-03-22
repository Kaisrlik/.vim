" Enable folding for ftrace function_graph traces.
"
" To use, :source this file while viewing a function_graph trace, or use vim's
" -S option to load from the command-line together with a trace.  You can then
" use the usual vim fold commands, such as "za", to open and close nested
" functions.  While closed, a fold will show the total time taken for a call,
" as would normally appear on the line with the closing brace.  Folded
" functions will not include finish_task_switch(), so folding should remain
" relatively sane even through a context switch.
"
" Note that this will almost certainly only work well with a
" single-CPU trace (e.g. trace-cmd report --cpu 1).


augroup __trace__
   if exists("did_load_filetypes")
      finish
   endif

   " Only do this when not done yet for this buffer
   if exists("b:did_ftplugin")
     finish
   endif

   " Don't load another plugin for this buffer
   let b:did_ftplugin = 1

   function! FunctionGraphFoldExpr(lnum)
     let line = getline(a:lnum)
     if line[-1:] == '{'
       if line =~ 'finish_task_switch() {$'
         return '>1'
       endif
       return 'a1'
     elseif line[-1:] == '}'
       return 's1'
     else
       return '='
     endif
   endfunction

   function! FunctionGraphFoldText()
     let s = split(getline(v:foldstart), '|', 1)
     if getline(v:foldend+1) =~ 'finish_task_switch() {$'
       let s[2] = ' task switch  '
     else
       let e = split(getline(v:foldend), '|', 1)
       let s[2] = e[2]
     endif
     return join(s, '|')
   endfunction

   setlocal foldexpr=FunctionGraphFoldExpr(v:lnum)
   setlocal foldtext=FunctionGraphFoldText()
   setlocal foldcolumn=12
   setlocal foldmethod=expr

   " Set 'comments' to format dashed lists in comments
   setlocal comments=s:#\ ,m:#\ ,e:#

   " Set 'commentstring' to put the marker after a #.
   setlocal commentstring=#\ %s

augroup END
