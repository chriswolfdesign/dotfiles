set number
set relativenumber
set cursorline
syntax on
set tabstop=4
set smartindent
set expandtab
set colorcolumn=80
set mouse=a
set expandtab
set noswapfile
set clipboard=unnamedplus
" colorscheme vividchalk
filetype plugin indent on
" autocmd vimenter * NERDTree
" autocmd vimenter * Tagbar

set nocompatible              " be iMproved, required
filetype off                  " required

" Remember folds between sessions
" augroup remember_folds
"     autocmd!
"     autocmd BufWinLeave * mkview
"     autocmd BufWinEnter * silent! loadview
" augroup END

" Change color of colorcolumn
highlight ColorColumn ctermbg=Blue

" Get rid of the damned beep
set belloff=all

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" Plugin 'tpope/vim-sleuth'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'markgandolfo/nerdtree-fetch.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'sjl/badwolf'
" Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'

" let g:syntastic_c_compiler = ['gcc']

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
"

set tabstop=4
set autoindent
set shiftwidth=4

" Remaps
inoremap jk <Esc>

" Open NERDTree more easily
noremap <F1> :NERDTreeToggle<Enter>

" Open Tagbar more easily
noremap <F2> :Tagbar<Enter>

" Switch panes more easily
noremap <F3> <c-w><c-w>

" Move to bash
noremap <F4> :!bash<Enter>

" Make ctags
noremap <F5> :! ctags -R .<Enter>

" Set tabsize for Python
" autocmd Filetype python setlocal ts=2
set laststatus=2

nnoremap <F8> <:Tagbar>
set runtimepath^=~/.vim/bundle/ctrlp.vim

if !has("gui_running")
let g:AutoClosePreservDotReg = 0
endif
