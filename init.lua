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
-- Plugin Management
-- Using lazy.nvim
-- =========================

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin list
require("lazy").setup({
    -- File explorer
    { "preservim/nerdtree" },
    { "ryanoasis/vim-devicons" },
    -- Autocompletion and LSP
    { "neoclide/coc.nvim", branch = "release" },
    -- Color scheme 
    { "catppuccin/nvim", name = "catppuccin" },
    -- AI Agents
    { "github/copilot.vim" },
})

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
