augroup __bitbake__
	au!
	" .bb, .bbappend and .bbclass
	au BufNewFile,BufRead *.{bb,bbappend,bbclass} set filetype=bitbake expandtab
	" .inc
	au BufNewFile,BufRead *.inc set filetype=bitbake expandtab
augroup end
