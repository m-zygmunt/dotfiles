"""""""""""""""""""""""""""""""""""""""
	   "Matt's .vimrc
"""""""""""""""""""""""""""""""""""""""

set encoding=utf8


"""""""""""""""""""""""""""""""""""""""
"Vundle definition begin
set nocompatible	"Use Vim defaults instead of 100% vi compatibility
filetype off		"Required by Vundle

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Utility
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"All of Plugins must be added before following line
call vundle#end()		"required
filetype plugin indent on	"required
filetype plugin on "for markdown

"Vundle definition end
"""""""""""""""""""""""""""""""""""""""


"Configuration begins

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

"Allow saving of files as sudo when I forgot to start as sudp
cmap w!! w !sudo tee > /dev/null %
