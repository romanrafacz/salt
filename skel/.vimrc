set nu
syntax on
execute pathogen#infect()
 
filetype indent plugin on
set wildmenu
 
set modeline
set background=dark
 
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

map <C-E> :tabe
map <C-P> :tabp
map <C-N> :tabn
noremap <leader>sw :w !sudo tee %<cr>

