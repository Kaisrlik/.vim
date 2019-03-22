augroup __udev__
	if exists("did_load_filetypes")
		finish
	endif

	au!
	au BufNewFile,BufRead *.rules set filetype=udev
augroup end
