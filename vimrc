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

" NERD tree toggle
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

" Set color scheme
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256
  set term=gnome-256color

  "set guifont=Monospace\ Bold\ 12
  "colorscheme desert
  "colorscheme railscasts
  "colorscheme vividchalk
  
  "solarized
  syntax enable
  "set background=light
  set background=dark
  colorscheme solarized
else
  "dont load csapprox if there is no gui support - silences an annoying warning
  "let g:CSApprox_loaded = 1

  set term=gnome-256color
  "colorscheme desert
  "colorscheme railscasts
  "colorscheme vividchalk
  "colorscheme grb256
  
  "solarized
  syntax enable
  "set background=light
  set background=dark
  colorscheme solarized
endif
