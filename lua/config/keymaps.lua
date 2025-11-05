-- =========================
-- Keymaps configuration 
-- ========================= 

vim.g.mapleader = " " -- Space as leader
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }) -- Escape to normal mode in terminal
vim.api.nvim_set_keymap("n", "<Leader>f",":NERDTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>r",":NERDTreeRefreshRoot<CR>", { noremap = true })
