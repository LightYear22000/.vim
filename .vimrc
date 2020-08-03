:set tabstop=4
:set rnu
:set smartindent
:set autoindent
:set incsearch
:set smartcase
:set noswapfile
:set relativenumber
:set nowrap
:set colorcolumn=80
:set tabstop=4 softtabstop=4
:set noswapfile
:set shiftwidth=4
vertical resize 30
highlight ColorColumn ctermbg=0 guibg=lightgrey
inoremap ;; <Esc>

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab' 
" Plug 'Valloric/YouCompleteMe'
Plug 'git@github.com:SirVer/ultisnips.git'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'ThePrimeagen/vim-be-good'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p


" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
