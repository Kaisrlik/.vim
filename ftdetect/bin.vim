" " " Editace binárních souborů
" au!
" au BufReadPost  *.raw %!xxd -g1
" au BufReadPost  *.raw set ft=xxd
" au BufWritePre  *.raw %!xxd -g1 -r
" au BufWritePost *.raw %!xxd -g1
" au BufWritePost *.raw set nomod
" au BufReadPost  *.bin %!xxd -g1
" au BufReadPost  *.bin set ft=xxd
" au BufWritePre  *.bin %!xxd -g1 -r
" au BufWritePost *.bin %!xxd -g1
" au BufWritePost *.bin set nomod

" Editace binárních souborů
augroup __raw__
    au!
    au BufReadPost  *.raw,*.bin %!xxd -g1
    au BufReadPost  *.raw,*.bin set ft=xxd
    au BufWritePre  *.raw,*.bin %!xxd -g1 -r
    au BufWritePost *.raw,*.bin %!xxd -g1
    au BufWritePost *.raw,*.bin set nomod
augroup END