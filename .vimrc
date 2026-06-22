" ~/.vimrc
" Description: Optimized for Solidity development
" Author: Steven Ens

" ====================
" Core Vim Settings
" ====================

" Disable Vi compatibility 
set nocompatible
" Enable true color support
set termguicolors
" Colourscheme nord-vim
colorscheme nord

" Enable file type detection
filetype on
" Needed to use plugins
filetype plugin on
" Load the indent file for specific file types
filetype indent on
" Set the default file format
set fileformat=unix
" UTF-8 encoding
set encoding=utf-8

" Set how many lines of history Vim remembers
set history=100
" Show partial commands in the bottom right corner
set showcmd 
" Allow backspacing over everything
set backspace=indent,eol,start
" Ensures <SPACE> isn't mapped to anything else
nnoremap <SPACE> <NOP>
" Set <LEADER> as <SPACE>
let mapleader = " " 

" ====================
" Keybindings
" ====================

nnoremap <LEADER>1 :NERDTreeToggle <CR>
nnoremap <LEADER>2 :TagbarToggle <CR>
" Forge
nnoremap <LEADER>3 :w <CR> :redraw! <CR> :!clear && forge build <CR>
nnoremap <LEADER>4 :w <CR> :redraw! <CR> :!clear && forge coverage --gas-report -vvv <CR>
nnoremap <LEADER>5 :w <CR> :redraw! <CR> :!clear && forge script script/Deploy.s.sol:Deploy -vvv <CR>
nnoremap <LEADER>6 :w <CR> :!forge fmt % <CR> :e <CR>
" Substitute
nnoremap <LEADER>rn :call Substitute() <CR>
" Save files after opening without write permissions
noremap <LEADER>0 :w !sudo tee % > /dev/null <CR> 

" Letter key bindings
nnoremap <LEADER>w :w <CR>
nnoremap <LEADER>q :wq <CR>
nnoremap <LEADER>qq :q! <CR>
" Enter visual block mode
nnoremap <LEADER>v <C-v>
" Move one window to the right. Tagbar uses <SPACE> so comma needed   
nnoremap ,r <C-w>w  

" ====================
" Plugins
" ====================

" Required for coc.nvim
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Longer than 0.3s leads to worse experience 
set updatetime=300

nnoremap gd <Plug>(coc-definition)
" Go back to previous location
nnoremap gb <C-o>
nnoremap gy <Plug>(coc-type-definition)
nnoremap gi <Plug>(coc-implementation)
nnoremap gr <Plug>(coc-references)

" Close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Solidity for tagbar
let g:tagbar_type_solidity = {
    \ 'ctagstype': 'solidity',
    \ 'ctagsargs': '-f - --options=/home/steve/.ctags',
    \ 'kinds' : [
        \ 'a:Contracts',
        \ 'b:Interfaces',
        \ 'c:Libraries',
        \ 'd:Structs',
        \ 'e:Enums',
        \ 'f:Mappings',
        \ 'g:Events',
        \ 'h:Errors',
        \ 'i:Modifiers',
        \ 'j:Constructors',
        \ 'k:Receive',
        \ 'l:Fallback',
        \ 'm:Functions',
    \ ]
\ }

" Turn off sorting so Tagbar follows the custom ctags order
let g:tagbar_sort = 0
" Close tagbar after tag selection
let g:tagbar_autoclose = 1
" Show line numbers
let g:tagbar_show_linenumbers = 1
" Set the tag jump location to appear 20% from the top
let g:tagbar_jump_offset = winheight(0) / 5 

" Change the indent line character
let g:indentLine_char = '|'

" ====================
" Substitute
" ====================

" Substitute whole words
function Substitute()
    call inputsave()
    let word = input('Existing string: ')
    let substitute = input('Substitute string: ') 
    call inputrestore()
    redraw
    let command = ":%s/\\<" . word . "\\>/" . substitute . "/gc"
    " Uncomment for testing
    "echo command
    execute command
endfunction

" ====================
" Editor Appearance
" ====================

" Enable syntax highlighting
syntax enable 

" Show line numbers
set number
" Show a visual line on the cursor's current line
set cursorline
" Show the matching part of the pair for (), [] and {} 
set showmatch
" Length of showmatch blink in tenths of a second when matching
set matchtime=2

" ====================
" Indentation 
" ====================

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

" ====================
" Statue Line 
" ====================

" Always show the status line
set laststatus=2
" Show buffer number
set statusline=[%n]\ %*
" Show relative file path
set statusline+=%f\ %*
" Show file type
set statusline+=%y\ %*
" Show file format (unix/dos/mac)
set statusline+=[%{&ff}]\ %*
" Show modified flag (+) if file has unsaved changes
set statusline+=%m\ %*
" Show read-only flag if file cannot be modified
set statusline+=%r\ %*
" Right-align everything after this point
set statusline+=%=
" Show percentage through file
set statusline+=(%3p%%)\ %*
" Show current row number
set statusline+=Row:%3l
" Show total number of rows in file
set statusline+=/%L\ %*
" Show current column number
set statusline+=Column:%3c\ %*
