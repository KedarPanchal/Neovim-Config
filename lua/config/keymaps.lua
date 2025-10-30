-- =========================
-- Keymaps configuration 
-- ========================= 

vim.g.mapleader = " " -- Space as leader
vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', ':NERDTreeFocus<CR>R<C-W><C-P>', { noremap = true })
