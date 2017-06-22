" full 256 color
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

set hlsearch



autocmd BufRead,BufNewFile   *.lua set shiftwidth=2 ts=2

" enable all Python syntax highlighting features
let python_highlight_all = 1

let g:pymode_rope = 0

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/klen/python-mode.git'

" Quick file browser
Plug 'ctrlpvim/ctrlp.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Tab file browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 

call plug#end()

" Colorscheme
" color evening

syntax on
"hi CursorLine           cterm=none ctermbg=238      ctermfg=none    gui=none        guibg=#424242
"hi CursorColumn         cterm=none ctermbg=238      ctermfg=none    gui=none        guibg=#424242
colorscheme smyck

"""""""""""""""""""""""""""""""""""
" Keymapping
"""""""""""""""""""""""""""""""""""
" let mapleader=","
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <Leader>u :UndotreeToggle<cr>
