"
"
" Description: my nvim config file
"
" Author: Vincent Thiery
"
"

set nocompatible

set shell=zsh

" Setup my workspace
set showmode
set number
set autochdir

" Conventions
set tabstop=4
set shiftwidth=2
set expandtab

" Search utils
set ignorecase
set smartcase
set hlsearch
set showmatch
set incsearch

" Behavior
set autoread
set nobackup
set nowritebackup
set noswapfile
autocmd BufWritePre * %s/\s\+$//e

" Color scheme
colorscheme elflord

" Install vim-plug automatically
" see https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-hclfmt'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/vim-notes-cli'
call plug#end()

" Toggle NERDTree with C-t
nnoremap <C-t> :NERDTreeToggle<CR>

" NERDTree settings
let g:NERDTreeMouseMode=2
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeIgnore=[ '\.obj$', '\.o$', '\.git$' ]

" NERDCommenter
filetype plugin on

" Terraform
let g:terraform_fmt_on_save=1
let g:terraform_align=1
