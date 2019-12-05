"""""""""""""""""""""""""""""""""""""""
	   "Matt's .vimrc
"""""""""""""""""""""""""""""""""""""""

set encoding=utf8
let mapleader =","


"""""""""""""""""""""""""""""""""""""""
"Plug definition begin
set nocompatible	"Use Vim defaults instead of 100% vi compatibility

if empty(glob('~/.vim/autoload/plug.vim'))
		  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

call plug#begin('~/.vim/plugged')

"Utility
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'

call plug#end()

"Plug definition end
"""""""""""""""""""""""""""""""""""""""

"Auto source .vimrc when save
autocmd! BufWritePost .vimrc source %

filetype plugin indent on	"required
filetype plugin on "for markdown

"Configuration begins

set bg=light

"Wrap text
set textwidth=140

"Set language and turn on spellchecking
nnoremap <F2> :set spell spelllang=en_us<cr>
nnoremap <F3> :set spell spelllang=pl<cr>
nnoremap <F4> :set nospell<cr>
"setlocal spell spelllang=en_us

"Turn on syntax highlights
syntax on

"Turn on line numbers relative numbers and line highlight
set number
set relativenumber
set cursorline

"Tabs and spacing
set tabstop=4 " number of visual spaces per TAB

"Highlight matching {[()]}
set showmatch

"Searching
set incsearch " search as characters are entered
set hlsearch  " higlight matches

"Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Make shift-insert work like in Xterm
if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

"Some NERD Tree specific settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

"Allow saving of files as sudo when I forgot to start as sudp
cmap w!! w !sudo tee > /dev/null %

"Indentation fo python language
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix
