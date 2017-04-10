syntax enable

set autoindent

set mouse=a

set number

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

colorscheme base16-eighties

set laststatus=2
set ttimeoutlen=2
set noshowmode
let g:airline_powerline_fonts = 1
