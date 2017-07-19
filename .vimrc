"""
"""default editing settings
"""

"mouse support
set mouse=a

"syntax highlighting
filetype plugin on
syntax on

"autoindent next line
set autoindent

"remember cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"split stuff
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"enable folding
set foldmethod=indent
set foldlevel=99
"nnoremap <space> za

"""
"""theming
"""

"enable line numbers
set nu

"gruvbox configuration
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox
set background=dark

"airline configuration
set laststatus=2
set showtabline=2
set ttimeoutlen=2
set noshowmode
let g:airline_powerline_fonts=1

"""
"""filespecific
"""

"""python


"""full stack

"LOOK INTO INDENTATION
"""PLUGINS TO INSTALL
"nerdtree
"syntastic
"fugitive
"bufexplorer or minibufexpl?
"project?

"""code specific
"jedi
"jad
"omnicppcomplete
