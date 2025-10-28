-- =========================
-- Baseline Settings
-- =========================

-- Clipboard integration
vim.opt.clipboard = 'unnamedplus'

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Menu settings
vim.opt.completeopt = { "noinsert", "menuone", "noselect" }

-- Keyboard shortcuts
vim.g.mapleader = " " -- Space as leader
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', ':NERDTreeFocus<CR>R<C-W><C-P>', { noremap = true })

-- Visual enhancements
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.title = true

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Miscellaneous editing enhancements
vim.opt.hidden = true
vim.opt.mouse = 'a'
vim.opt.inccommand = 'split'
vim.opt.wrap = false

-- Performance enhancements
vim.opt.ttyfast = true

-- File type detection
vim.cmd([[
  filetype plugin indent on
  syntax on
]])

-- =========================
-- Plugin Management using vim-plug
-- =========================
vim.cmd([[
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" File and code navigation
Plug 'preservim/nerdtree' " NerdTree File explorer
Plug 'ryanoasis/vim-devicons' " Add file icons to NerdTree

" Code completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Color scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " Catppuccin color scheme

" AI agents
Plug 'github/copilot.vim' " Copilot Agent

call plug#end()
]])

-- =========================
-- Plugin Configuration
-- =========================

-- Use Enter for navigating completion menu (CoC)
vim.api.nvim_set_keymap('i', '<CR>',
  [[coc#pum#visible() ? coc#pum#next(1) : "\<CR>"]],
  { expr = true, silent = true }
)

-- =========================
-- Color scheme
-- =========================
vim.cmd('colorscheme catppuccin-macchiato')

-- =========================
-- Startup commands
-- =========================
vim.cmd([[
  autocmd VimEnter * botright terminal
  autocmd VimEnter * resize 10 | wincmd p
  autocmd VimEnter * NERDTree | wincmd p
]])
