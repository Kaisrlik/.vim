" Vim a assembler
augroup __asm__
   au!
   au BufRead,BufNewFile *.S set tw=0 nowrap
"   au BufRead,BufNewFile *.asm noremap <C-F9> :!nasm -f bin % -o output.com -l output.lst<CR>
"   au BufRead,BufNewFile *.asm noremap <F9> :!start output.com<CR>
augroup END

" function graph fold
au BufRead,BufNewFile *.trace set filetype=trace


" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,verilog let b:comment_leader = '// '
autocmd FileType sh,ruby,python           let b:comment_leader = '# '
autocmd FileType conf,fstab,cnf,make      let b:comment_leader = '# '
autocmd FileType tex,matlab               let b:comment_leader = '% '
autocmd FileType mail                     let b:comment_leader = '> '
autocmd FileType vim                      let b:comment_leader = '" '
