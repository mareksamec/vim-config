"------------ MY CUSTOMIZATIONS ----------------- 

"-------------FORMATTING-------------------------
"Line numbers, backspace, whitespace chars, formatting

set encoding=utf-8 
set number 
set backspace=indent,eol,start 
set listchars=space:·,tab:>\-,eol:¬ 
set fileformat=unix 
"set fileformats=dos 
syntax on 
"-- This will turn of the line wrapping, CAREFUL, the lines will be out of screen and no horizontal scrollbar is visibile in the command line vim. 
"set nowrap 
set linebreak 

"-------------VIM SETTINGS (tmp, backups, interface etc...)--
" -- Needed for tmp files to work on Windows, the tmp files are saved to specified folder
set directory=/c/Users/msamec/Documents/temp// 
set shellslash 
" Auto identation 
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null 
 
"use :tabe <filename> to open new files 
:set tabline=%!MyTabLine() 
 
" Enable highlighting for the search via / 
set hlsearch 
"hi Search guibg=LightBlue 
 
"-----------CUSTOM KEY MAPPINGS-------------------- 
":ShowWhiteToggle to se whitespaces 
 
"Toggle whitespace and linebreak characters visibility 
map <F2> :set list<CR> 
map <F3> :set nolist<CR> 
"Auto pretty format XML file 
noremap <F5> :.!xmllint --format --recover - 2>/dev/null<CR> 
"Change text file type between linux and dos 
map <F9> :e ++ff=unix<CR> 
map <F10> :e ++ff=dos<CR> 
"Replace ' with eol (useful for EDIFACT files) 
map <F8> :%s/'//g <CR> 
"Switching to next and previous tabs by Ctrl+l and Ctrl+h 
noremap <C-l> :n<CR> 
noremap <C-h> :N<CR> 
"Switch to next file buffer (seems windows vim uses buffers in default) 
nnoremap <C-n> :bnext<CR> 
nnoremap <C-p> :bprevious<CR> 
