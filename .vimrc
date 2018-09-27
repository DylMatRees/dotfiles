set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ajmwagar/vim-deus' " colour scheme
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'shumphrey/fugitive-gitlab.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'
Plugin 'davidhalter/jedi-vim' " code completion for python
Plugin 'Rip-Rip/clang_complete' " code completion for c

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Remap leader to space key
let mapleader = " "

set backspace=2     " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile      " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set laststatus=2    " Always display the status line
set autowrite       " Automatically :write before running commands
set ts=4            " set tabs to have 4 spaces
set autoindent      " indent when moving to the next line while writing code
set expandtab       " expand tabs into spaces
set shiftwidth=4    " when using the >> or << commands, shift lines by 4 spaces
set showmatch       " show the matching part of the pair for [] {} and ()
set number          " show line numbers
set numberwidth=5   " set line number width to 5
set relativenumber  " show line numbers
set nojoinspaces    " Use one space, not two, after punctuation.

" enable powerline fonts
set encoding=utf-8
set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline
let g:airline_powerline_fonts = 1

" setting for colour scheme
syntax enable
set t_Co=256
colorscheme deus

" remap switching between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open new split panes to right and bottom
set splitbelow
set splitright

" toggle NERDTree with ctrl - n
map <C-n> :NERDTreeToggle<CR>

" change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" set tmux windows to filename of windows in vim
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

" Support for :Gbrowse using GitLab
