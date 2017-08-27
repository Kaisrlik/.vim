" remap tags key
map <leader>. <c-]>   " dive into the tag
map <leader>/ :pop    " go back one
map <leader>; :ts     " show list of files in which the tag is found

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
