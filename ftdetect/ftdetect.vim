" Vim a assembler
augroup __asm__
	au!
	au BufRead,BufNewFile *.S set tw=0 nowrap
	"   au BufRead,BufNewFile *.asm noremap <C-F9> :!nasm -f bin % -o output.com -l output.lst<CR>
	"   au BufRead,BufNewFile *.asm noremap <F9> :!start output.com<CR>
augroup END

augroup __makefile__
	au!
	autocmd FileType make set noexpandtab
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" function graph fold
au BufRead,BufNewFile *.trace set filetype=trace

au BufRead,BufNewFile SConstruct set filetype=python
au BufRead,BufNewFile SConscript* set filetype=python

" Commenting blocks of code.
let b:comment_leader = '# '
autocmd FileType c,cpp,java,scala,verilog let b:comment_leader = '// '
autocmd FileType dts,rust                 let b:comment_leader = '// '
autocmd FileType sh,ruby,python           let b:comment_leader = '# '
autocmd FileType conf,fstab,cnf,make      let b:comment_leader = '# '
autocmd FileType matlab,tex               let b:comment_leader = '% '
autocmd FileType mail                     let b:comment_leader = '> '
autocmd FileType vim                      let b:comment_leader = '" '
autocmd FileType lua                      let b:comment_leader = '-- '

au BufRead /tmp/mutt-* set tw=72
augroup filetypedetect
	" Mail
	autocmd BufRead,BufNewFile *mutt-*              setfiletype mail
augroup END

