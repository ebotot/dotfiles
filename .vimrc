"""
"""default editing settings
"""
set nocompatible		"vim defaults instead of vi
filetype plugin indent on	"filetype-specific settings
syntax on			"syntax highlighting
set autoindent			"current indent for new lines
set smarttab			"backspace removes 'shiftwidth' spaces
set wildmenu			"better tab completion
set wildmode=longest:full,full	"wildmenu behavior

set mouse=a			"enables mouse support
set nu				"line numbers

"remember cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"traditional copypaste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"split commands
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
"""plugins
"""
"automatic install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
call plug#begin('~/.vim/plug')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
"Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"automatically executes 'filetype plugin indent on' 
"and 'syntax enable'
call plug#end()

"""
"""theming
"""

"airline fixes
set ttimeoutlen=10
set noshowmode

"gruvbox colors
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="soft"
colorscheme gruvbox
let g:airline_theme='gruvbox'

"powerline fonts
let g:airline_powerline_fonts = 1

"smart tab line
let g:airline#extensions#tabline#enabled = 1

"airline truncation
let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }

"""
"""filespecific
"""

"LaTeX spell checking
autocmd FileType tex setlocal spell spelllang=en_us

"vimtex viewer
"let g:vimtex_view_method = 'zathura'

"latex pdf viewer
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
