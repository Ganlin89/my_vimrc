set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'Syntastic'
Plugin 'flazz/vim-colorschemes'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"NERDTree config
autocmd VimEnter * NERDTree  "auto open nerdtree
autocmd VimEnter * wincmd p  "cursor starts at main window


"Youcompleteme config
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"Solarized config
if has('gui_running')
    set background=light
else
     set background=dark
endif
let g:solarized_termcolors = 256
let g:solarized_termtrans = 0
let g:solarized_degrade = 1
let g:solarized_bold = 1
let g:solarized_underline =  1
let g:solarized_italic    =  1
let g:solarized_contrast  = "high"
let g:solarized_visibility=  "high"

"Tarbar config
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left = 0
nmap <F3> :TagbarToggle<CR>




"Others
syntax enable
set title
colorscheme molokai 
set mouse=a
set number
set nowrap
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wildmenu
set lazyredraw
set showmatch
set incsearch 
