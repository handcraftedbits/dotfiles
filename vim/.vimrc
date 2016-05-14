" Miscellaneous
filetype off
set encoding=utf-8

if $SHELL =~ 'fish'
  set shell=/bin/sh
endif

let mapleader=","

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'chrisbra/unicode.vim'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'gabrielelana/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 't-yuki/vim-go-coverlay'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

nmap <leader>n :NERDTreeToggle

" SuperTab
set completeopt-=preview

let g:SuperTabDefaultCompletionType = "context"

" Tagbar
autocmd vimenter * TagbarToggle

nmap <leader>t :TagbarToggle<CR>

" vim-go
let g:go_highlight_build_constraints = 1
let g:go_highlight_functions = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gc <Plug>(go-coverlay)
au FileType go nmap <leader>gC <Plug>(go-clearlay)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gm <Plug>(go-implements)
au FileType go nmap <leader>gi <Plug>(go-info)
au FileType go nmap <leader>gl <Plug>(go-metalinter)
au FileType go nmap <leader>ge <Plug>(go-rename)
au FileType go nmap <leader>go <Plug>(go-doc)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gv <Plug>(go-vet)

" airline
let g:airline_powerline_fonts = 1

" File types/syntax.
set autoindent
syntax on

autocmd FileType css set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType dockerfile set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType go set tabstop=4|set shiftwidth=4
autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType java set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType javascript set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType less set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType markdown set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType md set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType sh set tabstop=5|set shiftwidth=5|set expandtab
autocmd FileType vim set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType xml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType yaml set tabstop=2|set shiftwidth=2|set expandtab

" Colors
colorscheme molokai

" General settings
set backspace=indent,eol,start
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

nnoremap <leader><space> :nohlsearch<CR>

if has("gui_running")
  if has("gui_macvim")
    set guifont=Source\ Code\ Pro\ Medium:h12
  else
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
