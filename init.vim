" =========================
" Baseline Settings
" =========================

" Clipboard integration
set clipboard=unnamedplus

" Window splitting
set splitright
set splitbelow

" Menu settings
set completeopt=noinsert,menuone,noselect

" Visual enhancements
set cursorline
set number
set termguicolors
set signcolumn=yes
set title

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Miscellaneous editing enhancements
set hidden
set mouse=a
set inc=split
set nowrap

" Performance enhancements
set ttyfast

" File type detection
filetype plugin indent on
syntax on

" =========================
" Plugin Management
" =========================

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" File and code navigation
Plug 'preservim/nerdtree' " NerdTree File explorer
Plug 'ryanoasis/vim-devicons' " Add file icons to NerdTree

" Code completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Color scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" AI agents
Plug 'github/copilot.vim' " Copilot AI Pair Programmer

call plug#end()

" =========================
" Plugin Configuration
" =========================



" ========================= 
" Color scheme
" =========================

colorscheme catppuccin-macchiato

" =========================
" Startup commands
" =========================

autocmd VimEnter * botright terminal
autocmd VimEnter * resize 10 | wincmd p
autocmd VimEnter * NERDTree | wincmd p
