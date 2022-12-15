"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev qb bdelete
cnoreabbrev Qb bdelete
cnoreabbrev qt tabclose
cnoreabbrev Qt tabclose

noremap <F1> ""
map <C-down> gj
map <C-up> gk

" Buffer focus
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" map leader key
nnoremap , <NOP>
let mapleader = ","
nnoremap ; <NOP>
let maplocalleader = ";"

" togle tagbar
nnoremap <leader>1 :TagbarToggle<CR>

" format while document and return back
nmap <leader>g :normal mggg=G'g<cr>:delmarks g<cr>zz

" copy visually selected text to/out of systems clipboard
" vnoremap <C-c> "*y
vnoremap <C-c> :call system("wl-copy --trim-newline", @")<CR>

" call ag on current word
if !has("nvim-0.5.0")
	nnoremap <silent> <leader>ag :Ag <C-R><C-W><CR>
	nnoremap <silent> <C-p> :Ag<CR>
end

" searching for visually selected text
vnoremap // y/<C-R>"<CR>

" Allow saving of files with sudo when I forgot to start vim with bad privilages
cmap w!! w !sudo tee > /dev/null %

" Commenting block of code
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Toggle spell checking on and off with `,s`
" z=, 1z= take first
" set spell z= -> dictonary
" zg correct world, zuw, zug remove
nmap <silent> <leader>s :set spell!<bar> :set cursorline!<CR>
" Disable highlighting of Capital letter word located behind end of the sentence
set spellcapcheck=

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
" nnoremap N nzzzv
" nnoremap n Nzzzv

" Fast moving between buffers
map <F1> :bn<CR>
map <F2> :bp<CR>
" skok na předchozí chybové hlášení
map <F3> :cp<cr>
" skok na následující chybové hlášení
map <F4> :cn<cr>
" uložení aktuálně editovaného souboru a spuštění překladu
map <F5> :w<cr>:make<cr>
" výpis všech chybových hlášení překladače
map <F6> :cl<cr><cr>
" Nerdtree
map <F7> :NERDTree<CR>
map <F8> :Explore<CR>

" switch between headers and src
map <C-1> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file
map <C-5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen commnent
map <C-6> :Dox<CR>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nmap <leader>1 :.!toilet -w 200 -f term -F border<CR>
