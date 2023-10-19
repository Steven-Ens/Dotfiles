" ~/.vimrc
" Description: Optimized for Solidity development
" Author: Steven Ens

" Colourscheme nord-vim-256 
colorscheme nord

" Enable file type detection
filetype on
" Needed to use plugins
filetype plugin on
" Load the indent file for specific file types
filetype indent on

" Disable VI compatibility 
set nocompatible
" Set the default file format
set fileformat=unix
" UTF-8 encoding
set encoding=utf-8


" Set how many linex of history VIM remembers
set history=100
" Show the <LEADER> key bindings in the bottom right hand corner 
set showcmd 
" Ensures <SPACE> isn't mapped to anything else
nnoremap <SPACE> <NOP>
" Set <LEADER> as <SPACE>
let mapleader = " " 

" Number key bindings
nnoremap <LEADER>1 :NERDTreeToggle <CR>
nnoremap <LEADER>2 :TagbarToggle <CR>

nnoremap <LEADER>9 :call Substitute() <CR>
" Save files after opening without write permissions
noremap <LEADER>0 :w !sudo tee % > /dev/null <CR> 

" Letter key bindings
nnoremap <LEADER>w :w <CR>
nnoremap <LEADER>q :wq <CR>
nnoremap <LEADER>qq :q! <CR>
" Enable folding
nnoremap <LEADER>f za
" Enter visual block mode
nnoremap <LEADER>v <C-v>
" Move one window to the right. Tagbar uses <SPACE> so comma needed   
nnoremap ,r <C-w>w  

" Solidity for tagbar
let g:tagbar_type_solidity = {
    \ 'ctagstype': 'solidity',
    \ 'ctagsargs': '-f - --options=/home/steve/.ctags',
    \ 'kinds' : [
        \ 'a:Contracts',
        \ 'b:Events',
        \ 'c:Errors',
        \ 'd:Enums',
        \ 'e:Structs',
        \ 'f:Mappings',
        \ 'g:Constructors',
        \ 'h:Functions',
    \ ]
    \ }

" Close tagbar after tag selection
let g:tagbar_autoclose = 1
" Show line numbers
let g:tagbar_show_linenumbers = 1
" Set the tag jump location to appear 20% from the top
let g:tagbar_jump_offset = winheight(0) / 5 

" Change indent line character
let g:indentLine_char = '|'

" Close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Substitute words with <F9>
function Substitute()
    call inputsave()
    let word = input('Enter existing string: ')
    let substitute = input('Enter substitute string: ') 
    call inputrestore()
    redraw
    " Original command format: :%s/\<word\>/substitute/gc
    let command = ":%s/\\<" . word . "\\>/" . substitute . "/gc"
    "echo command
    execute command
endfunction

" Enable syntax highlighting
syntax enable 

" Show line numbers
set number
" Show a visual line on the cursor's current line
set cursorline
" Show the matching part of the pair for (), [] and {} 
set showmatch
" Length of showmatch blink in tenths of a second when matching
set mat=2
" Lines longer than 119 columns will be broken
set textwidth=119
" Set a wrap margin to 119 characters before inserting a new line
"set wrapmargin=119 

" Align the new line indent with the previous line
set autoindent
" Insert spaces when hitting <TAB>
set expandtab
" Tab width is 4 spaces 
set tabstop=4
" Insert and delete 4 spaces when hitting a <TAB>/<BACKSPACE>
set softtabstop=4
" Indent operations use 4 spaces 
set shiftwidth=4

" Lines folded based on syntax
set foldmethod=syntax
" Opening files has folds open by default
set nofoldenable
" Only the current fold is folded instead of all of the folds
set foldlevel=2
" Only one fold per foldable block of code
set foldnestmax=1

" Status line
set laststatus=2
set statusline=[%n]\ %*
set statusline+=%F\ %*
set statusline+=%y\ %*
set statusline+=[%{&ff}]\ %*
set statusline+=%m\ %*
set statusline+=%r\ %*
set statusline+=%=
set statusline+=(%3p%%)\ %*
set statusline+=Row:%3l
set statusline+=/%L\ %*
set statusline+=Column:%3c\ %*
