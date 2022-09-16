augroup presentation
	autocmd!
	" Presentation mode
	au Filetype markdown,rst,org nnoremap <buffer> <F10> :PresentingStart<CR>
	" ASCII art
	au Filetype markdown,rst,org nnoremap <buffer> <F12> :.!toilet -w 200 -f term -F border<CR>
	au FileType markdown let s:presenting_slide_separator_default = '\v(^|\n)\ze#+ '
augroup end
