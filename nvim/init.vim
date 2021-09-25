set number relativenumber
set mouse=a
set syntax
set ignorecase
set smartcase
set nowrap
set nowrapscan
set incsearch
set noswapfile
set nobackup
set nowritebackup
set noshowmode
set cmdheight=2
set updatetime=300
set hidden
set cursorline
set shortmess+=c
set encoding=utf-8
filetype plugin on
runtime macros/matchit.vim
" tab
set expandtab
set tabstop=2 shiftwidth=2
set autoindent
set smartindent

source $HOME/.config/nvim/my_minpac.vim
source $HOME/.config/nvim/my_coc.vim
source $HOME/.config/nvim/my_color.vim
source $HOME/.config/nvim/my_webdev.vim
source $HOME/.config/nvim/my_remap.vim
source $HOME/.config/nvim/my_filetype.vim

