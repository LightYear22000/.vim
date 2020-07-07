:set tabstop=4
:set rnu
:set smartindent
:set autoindent
:set incsearch
:set smartcase
:set nowrap
:set colorcolumn=80
:set tabstop=4 softtabstop=4
:set noswapfile
vertical resize 30
highlight ColorColumn ctermbg=0 guibg=lightgrey
inoremap ;; <Esc>

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab' 
Plug 'Valloric/YouCompleteMe'
Plug 'git@github.com:SirVer/ultisnips.git'
Plug 'honza/vim-snippets'
call plug#end()

colorscheme gruvbox
:set bg=dark

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Use the same .vimrc for nowvim

let g:mapleader = "\<space>"

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" This is to copy to CLipboard.
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

