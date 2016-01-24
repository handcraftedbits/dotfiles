" Miscellaneous
filetype off
set encoding=utf-8

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'majutsushi/tagbar'
" Until my PR is merged...
"Plugin 'scrooloose/nerdtree'
Plugin 'handcraftedbits/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'

call vundle#end()

filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

" SuperTab
set completeopt-=preview

let g:SuperTabDefaultCompletionType = "context"

" Tagbar
autocmd vimenter * TagbarToggle

nmap <F8> :TagbarToggle<CR>

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

au FileType go nmap <F3> <Plug>(go-def)

" airline
let g:airline_powerline_fonts = 1

" File types/syntax.
set autoindent
syntax on

autocmd FileType dockerfile set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType go set tabstop=4|set shiftwidth=4
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType java set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType javascript set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType sh set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType vim set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType xml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab

" Colors
colorscheme molokai

" General settings
set colorcolumn=120
set cursorline
set hlsearch
set incsearch
set lazyredraw
set nobackup
set nocompatible
set noswapfile
set noundofile
set number
set showmatch
set t_Co=256
set fillchars=vert:\│

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>

if has("gui_running")
  if has("gui_macvim")
    set guifont=Source\ Code\ Pro\ Medium:h12
  else
    set backspace=2
    set backspace=indent,eol,start
    set guifont=Source_Code_Pro_Medium:h8:cANSI
  endif

  set lines=60 columns=200
endif

if has("mouse")
  set mouse=a

  if &term =~ '^screen'
    set ttymouse=sgr
  endif
endif
