syntax on
filetype plugin indent on

set number
set ruler
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=2
set autoindent 
set smartindent

call plug#begin()
  Plug 'neoclide/coc.nvim'
  Plug 'preservim/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'gruvbox-community/gruvbox'
call plug#end()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

