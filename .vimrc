colorscheme base16-solarized-dark

syntax enable

set autoindent

set mouse=a

set number

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set laststatus=2
set ttimeoutlen=10
set noshowmode
let g:airline_theme='base16'
