execute pathogen#infect()
syntax on
filetype plugin indent on

"set background=dark
"colorscheme solarized
colorscheme elflord

set tabstop=8
set textwidth=80
set noexpandtab
set autoindent
set smartindent
set comments=sl:/*,mb:*,elx:*/
set number

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction
:inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>


set nocscopeverbose
set laststatus=2
set t_Co=256
