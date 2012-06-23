call pathogen#infect()

" Turn on syntax highlighting
syntax on

" load plugins and indent files
filetype plugin indent on

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Command-T
let g:CommandTMaxHeight=5
let g:CommandTMatchWindowAtTop=1
" map <c-f> :CommandTFlush<cr>\|:CommandT<cr>
" map <c-f> :CommandT<cr>
"i map <c-q> :CommandTFlush<cr>
map <leader>gv :CommandT app/views<cr>
map <leader>gc :CommandT app/controllers<cr>
map <leader>gm :CommandT app/models<cr>
map <leader>gh :CommandT app/helpers<cr>
map <leader>gl :CommandT lib<cr>
map <leader>gp :CommandT public<cr>
map <leader>gs :CommandT public/stylesheets/sass<cr>
map <leader>gf :CommandT features<cr>
map <leader>t :CommandT<cr>
map <leader>T :CommandT %%<cr>
