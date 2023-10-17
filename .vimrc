" ~/.vimrc

" Colourscheme nord-vim-256 
colorscheme nord

" Vim starts with 'compatible' option on, but as soon as a vimrc file is found it will be set to 'nocompatible'
set nocompatible

" Enable file type detection
filetype on
" Needed to use some plugins
filetype plugin on
" Load the indent file for specific file types
filetype indent on

" Show the <LEADER> key bindings in the bottom right hand corner 
set showcmd 
" Ensures <SPACE> isn't mapped to anything else
nnoremap <SPACE> <NOP>
" Set <LEADER> as <SPACE>
let mapleader = " " 
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

" Close tagbar after tag selection
let g:tagbar_autoclose = 1
" Set the tag jump location to appear 20% from the top
let g:tagbar_jump_offset = winheight(0) / 5 
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

" Set the default file format
set fileformat=unix
" UTF-8 encoding
set encoding=utf-8

" Enable syntax highlighting
syntax enable 
" Enable all Python syntax highlighting features
let python_highlight_all = 1 

" Show line numbers
set number
" Show a visual line on the cursor's current line
set cursorline
" Show the matching part of the pair for (), [] and {} 
set showmatch
" Lines longer than 119 columns will be broken
set textwidth=119
" Set a wrap margin to 119 characters before inserting a new line
"set wrapmargin=119 

" Align the new line indent with the previous line
set autoindent
" Insert spaces when hitting <TAB>
set expandtab
" A hard <TAB> displays as 4 columns
set tabstop=4
" Insert and delete 4 spaces when hitting a <TAB>/<BACKSPACE>
set softtabstop=4
" Operation >> indents 4 columns and operation << unindents 4 columns
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
