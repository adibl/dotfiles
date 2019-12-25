set t_Co=256 "config vim to use 256 colors
set background=dark "to fix tmux wird colors problem
syntax on "basic python syntax
filetype plugin on "??
au FileType python setl ofu=python3complete "Complete
set path+=** "search file in all subdirectory
set wildmenu "set menu to select if multible files match
set tabstop=4 "replace tab with 4 spaces
set shiftwidth=4 "number of spaces to auto indent
set expandtab " enter spaces when tab is presed
set number "line numbers
set autoindent "copy indent from last line
set smartindent "add indent after loops of ifs
set clipboard=unnamedplus "share clipboard with everything else
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>


let mapleader = " "
nnoremap <leader>r <C-c>:w<CR>:!python % 

" set tabname to filename
let &titlestring = @%
set title
