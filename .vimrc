:set nocompatible			" required 
filetype off				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" aternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" ============Add Plugins Here====================
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'	


" ===========End Plugins===========================

" All of your plugins myst be added before the following line
call vundle#end()			" required
filetype plugin indent on		" required

" VIMIDE Layout
" by Abby Jones
" Date: 6/24/2019
"
"

" ===============Vim Mappings and Appearance=======

:set clipboard=unnamed
:syntax on
:set splitright
:set number
nnoremap <C-J> <C-W><C-J>	" ^ctrl + J to move split below
nnoremap <C-K> <C-W><C-K>	" ^ctrl + K to move split above
nnoremap <C-L> <C-W><C-L>	" ^ctrl + L to move split to right
nnoremap <C-H> <C-W><C-H>	" ^ctrl + H to move split to left

" Enable folding
:set foldmethod=indent
:set foldlevel=99

" remap za to space bar
nnoremap <space> za

" map F6 to NERD tree
nmap <F6> :NERDTreeToggle<CR>

" PEP 8 compliance
au BufNewFile,BufRead *.py:
	\ :set tabstop=4
	\ :set softtabstop=4
	\ :set shiftwidth=4
	\ :set textwidth=79
	\ :set expandtab
	\ :set autoindent
	\ :set fileformat=unix

" stack compliance
au BufNewFile,BufRead *.js,*.html,*.css:
	\ :set tabstop=2
	\ :set softtabstop=2
	\ :set shiftwidth=2

" Zenburn colorscheme login
if has('gui_running')
	:set background=dark
	:colorscheme solarized
else
	:colorscheme zenburn
endif

"==============End Mappings and Appearance========







