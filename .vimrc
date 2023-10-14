" ~/.vimrc

"nord-vim-256 colorscheme
colorscheme nord

"vim starts with 'compatible' option on, but as soon as a vimrc file is found it will be set to 'nocompatible'
set nocompatible

"enable file type detection:
filetype on
"needed to use Flake8
filetype plugin on
"load the indent file for specific file types
filetype indent on

"show the <LEADER> key bindings appear in the bottom right hand corner 
set showcmd 
"ensures <SPACE> isn't mapped to anything else
nnoremap <SPACE> <NOP>
"set <LEADER> as <SPACE>
let mapleader = " " 

"number key bindings
nnoremap <LEADER>5 <ESC>:w<BAR> :!clear;python %<CR>
nnoremap <LEADER>6 :NERDTreeToggle <CR>
nnoremap <LEADER>7 :TagbarToggle <CR>
nnoremap <LEADER>9 :call Substitute() <CR>
"Save files quickly after opening without write permissions
noremap <LEADER>0 :w !sudo tee % > /dev/null <CR> 
"letter key bindings
nnoremap <LEADER>w :w <CR>
nnoremap <LEADER>ww :w! <CR>
nnoremap <LEADER>q :wq <CR>
nnoremap <LEADER>qq :q! <CR>
"enable folding with 'f'
nnoremap <LEADER>f za
"enter visual block mode
nnoremap <LEADER>v <C-v>
"move one window to the right, Tagbar uses <SPACE> so comma needed   
nnoremap ,r <C-w>w  

"autostart Tagbar
"autocmd VimEnter * Tagbar
"autostart NERDTree
"autocmd VimEnter * NERDTree
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"substitute words with <F9>
function Substitute()
    call inputsave()
    let word = input('Enter existing word: ')
    let substitute = input('Enter substitute word: ') 
    call inputrestore()
    redraw
    "original command format: :%s/\<word\>/substitute/gc
    let command = ":%s/\\<" . word . "\\>/" . substitute . "/gc"
    "echo command
    execute command
endfunction

"set the default file format
set fileformat=unix
"UTF-8 encoding for Python 3
set encoding=utf-8

"enable syntax highlighting
syntax enable 
"enable all Python syntax highlighting features
let python_highlight_all = 1 

"show line numbers
set number
"show a visual line under the cursor's current line
set cursorline
"show the matching part of the pair for [] {} and ()
set showmatch
"lines longer than 119 columns will be broken
set textwidth=119
"sets a wrap margin to 80 characters before inserting a new line
"set wrapmargin = 80

"align the new line indent with the previous line
set autoindent
"insert spaces when hitting <TAB>
set expandtab
"a hard <TAB> displays as 4 columns
set tabstop=4
"insert/delete 4 spaces when hitting a <TAB>/<BACKSPACE>
set softtabstop=4
"operation >> indents 4 columns; << unindents 4 columns
set shiftwidth=4

"lines with the same indentation folded together, all folds closed by default
set foldmethod=indent
"when opening files the folds are not closed
set nofoldenable
"only the current fold is folded instead of all of the folds
set foldlevel=2
"only one fold per foldable block of code
set foldnestmax=1

"status line
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
