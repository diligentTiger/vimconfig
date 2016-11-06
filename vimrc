"""""""""""""""""""""""""Vundle""""""""""""""""""""""""""""
set nocompatible																	"be iMproved, required
filetype off																			"required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"list all plugins below
"Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'												"fuzzy finders
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" autocomplete using Tab
Plugin 'ervandew/supertab'
" autocomplete as typing
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

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


"""""""""""""""""""""""""Config Plugin""""""""""""""""""""""""""""
"airline list buffer when there is only one tab open
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" ctrlP
" Setup some default ignores for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'



"""""""""""""""""""""""""Basic""""""""""""""""""""""""""""
set nu																						"show line numbers
"set cursorline																		"show horizontal highlight on current line
syntax enable																			"enable syntax processing
syntax on
"colorscheme desert
"fix vim backspace doesn't work
:set bs=2
"set nowrap
set wrap
set textwidth=120
set nocompatible
set sm
set foldmethod=marker
set foldenable																		" enable folding
"highlight Folded
set tabpagemax=15

"keep cursor away from top/bottom
set scrolloff=4

set expandtab
set cindent
set autoindent
set shiftwidth=2
set tabstop=2																			"number of spaces a tab counts for
set softtabstop=2																	"number of spaces a tab counts for when editing
set noexpandtab																		"turns tab into spaces

""""highlight column""""
"set colorcolumn=110
"highlight ColorColumn ctermbg=darkgray


"""""""""""""""""""""""""Search""""""""""""""""""""""""""""
set hls
set incsearch


"""""""""""""""""""""""""Mapping""""""""""""""""""""""""""""
map NERDTreeToggle to F2
map <F2> :NERDTreeToggle<CR>
"go to next tab
map <D-A-Right> :tabn<CR>
"go to previous tab
map <D-A-Left>  :tabp<CR>
