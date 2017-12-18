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

autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2

autocmd BufRead,BufNewFile   *.lua set shiftwidth=2 ts=2

" enable all Python syntax highlighting features
let python_highlight_all = 1

let g:cpp_class_scope_highlight = 1

let g:cpp_member_variable_highlight = 1

let g:pymode_rope = 0

filetype off
execute pathogen#infect()

call pathogen#infect()
call pathogen#helptags()

" Colorscheme
" color evening

syntax on
"hi CursorLine           cterm=none ctermbg=238      ctermfg=none    gui=none        guibg=#424242
"hi CursorColumn         cterm=none ctermbg=238      ctermfg=none    gui=none        guibg=#424242

syntax enable
set background=dark
let g:solarized_termcolors=256

colorscheme solarized

"""""""""""""""""""""""""""""""""""
" Keymapping
"""""""""""""""""""""""""""""""""""
" let mapleader=","
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <Leader>u :UndotreeToggle<cr>
