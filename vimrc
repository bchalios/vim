execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set nocompatible              " be iMproved, required
filetype off                  " required

set background=dark
"colorscheme solarized
colorscheme elflord

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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Install nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" capnproto support
Plugin 'cstrahan/vim-capnp'

" vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

" youcompleteme
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" colorschemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" NERDtree setup
map <C-n> :NERDTreeToggle<CR>
" NERDtree setup END

" Whitespace highlighting
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
set colorcolumn=81

" powerline status
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

if &diff
    colorscheme evening
endif

"YCM configuration
"
" When this option is set to 1 YCM will ask once per .ycm_extra_conf.py file
" if it is safe to be loaded. This is to prevent execution of malicious code
" from a .ycm_extra_conf.py file you didn't write.
let g:ycm_confirm_extra_conf = 1
