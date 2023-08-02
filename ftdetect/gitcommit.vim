augroup __gitcommit__
	au BufNewFile,BufRead */**/COMMIT_EDITMSG setf gitcommit
	au BufNewFile,BufRead */**/COMMIT_EDITMSG set syntax=gitcommit
augroup END
