" Binary files in hexdump format
augroup __raw__
    au!
    au BufReadPost  *.{raw,bin} %!xxd -g1
    au BufReadPost  *.{raw,bin} set ft=xxd
    au BufWritePre  *.{raw,bin} %!xxd -g1 -r
    au BufWritePost *.{raw,bin} %!xxd -g1
    au BufWritePost *.{raw,bin} set nomod
augroup END
