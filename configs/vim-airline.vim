"Airline"
   let g:airline_theme="kajza"

   "" if symbols are mess up
   if !exists('g:airline_symbols')
      let g:airline_symbols = {}
   endif

   " unicode symbols
   let g:airline_left_sep = '▶'
   let g:airline_left_alt_sep = '»'
   let g:airline_right_sep = '◀'
   let g:airline_right_alt_sep = '«'
   let g:airline_symbols.linenr = '¶'
   let g:airline_symbols.branch = '⎇'
   let g:airline_symbols.paste = 'Þ'
   let g:airline_symbols.whitespace = 'Ξ'
   let g:airline_symbols.space = "\ua0"
   let g:airline_powerline_fonts = 1
   let g:airline_symbols.crypt = '🔒'
   let g:airline_symbols.maxlinenr = '㏑'
   let g:airline_symbols.spell = 'Ꞩ'
   let g:airline_symbols.notexists = 'Ɇ'
   let g:airline_symbols.readonly = '🔒'

   " Enable the list of buffers
   let g:airline#extensions#tabline#enabled=1

   " Show just the filename
   let g:airline#extensions#tabline#fnamemod=':t'

   " enable/disable displaying buffers with a single tab
   let g:airline#extensions#tabline#show_buffers = 1
   " denotes whether buffer numbers should be displayed
   let g:bufferline_show_bufnr = 1
   " denotes whether bufferline should automatically echo to the command bar
   let g:bufferline_echo = 1
