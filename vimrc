if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Plugs to be added
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
"Plug 'lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/statusline.vim'
"Plug 'vim-scripts/XML-Indent'
Plug 'chrisbra/vim-show-char'
call plug#end()

colorscheme gruvbox
"let g:gruvbox_termcolors=16
let g:gruvbox_contrast_dark=('hard')
let g:airline_powerline_fonts = 1
set background=dark
set laststatus=2

"always show line numbers
set number
set t_Co=256


"Powerline config
"let g:Powerline_symbols = ('fancy')

"Themes for airline
"let g:AirlineTheme='solarized'
"let g:airline_solarized_bg='dark'

"Custom keyboard shortcuts and functions
"autoformat xml files
noremap <F5> :.!xmllint --format --recover - 2>/dev/null<CR>
"show whitespace and end of line characters
map <F2> :set list <bar> :ShowWhiteToggle<CR>
map <F3> :set nolist<CR>
" This is to set tabs to \ and eol to ¬
set listchars=tab:▸\ ,eol:¬
