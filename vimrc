" my  color scheme
colorscheme dark

set runtimepath+=$HOME/.vim/bundle/ultisnips
set runtimepath+=$HOME/.vim/bundle/languageclient-neovim
runtime autoload/pathogen.vim
call pathogen#infect('bundle/{}')
call pathogen#helptags()

source ~/.vim/configs/keymap.vim
source ~/.vim/configs/basic.vim

source ~/.vim/configs/termdebug.vim
source ~/.vim/configs/calendar.vim
source ~/.vim/configs/fzf.vim
source ~/.vim/configs/indexing.vim
source ~/.vim/configs/languageclient-neovim.vim
source ~/.vim/configs/ultisnip.vim
source ~/.vim/configs/vim-airline.vim
source ~/.vim/configs/vimrc
source ~/.vim/configs/riv.vim

let g:UltiSnipsListSnippets = "<C-U>"
