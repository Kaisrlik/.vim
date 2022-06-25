"" cmake
augroup __cmake__
	autocmd!
	autocmd FileType cmake set expandtab
	autocmd BufNewFile,BufRead CMakeLists.txt set filetype=cmake
augroup END
