-- =========================
-- Editing Enhancements
-- =========================

-- Clipboard integration
vim.opt.clipboard = { 'unnamedplus' }

-- Menu settings
vim.opt.completeopt = { "noinsert", "menuone", "noselect" }

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

-- File type detection
vim.cmd([[
  filetype plugin indent on
  syntax on
]])
