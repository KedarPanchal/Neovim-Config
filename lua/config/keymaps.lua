-- =========================
-- Keymaps configuration 
-- ========================= 

vim.g.mapleader = " " -- Space as leader
vim.g.maplocalleader = "," -- Comma as local leader (for plugins)

-- Terminal mode keymaps
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }) -- Escape to normal mode in terminal

vim.api.nvim_set_keymap("n", "<Leader>t<Up>", ":topleft split | resize 15 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>t<Down>", ":botright split | resize 15 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>t<Left>", ":topleft vsplit | vertical resize 60 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>t<Right>", ":botright vsplit | vertical resize 60 | terminal<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>tk", ":topleft split | resize 15 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>tj", ":botright split | resize 15 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>th", ":topleft vsplit | vertical resize 60 | terminal<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>tl", ":botright vsplit | vertical resize 60 | terminal<CR>", { noremap = true })

-- File explorer keymaps
vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope find_files<CR>", { noremap = true })

-- Bracket keymaps
vim.api.nvim_set_keymap("i", "{", "{}<Esc>i", { noremap = true })
vim.api.nvim_set_keymap("i", "(", "()<Esc>i", { noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<Esc>i", { noremap = true })
vim.api.nvim_set_keymap("i", "\"", "\"\"<Esc>i", { noremap = true })
vim.api.nvim_set_keymap("i", "'", "''<Esc>i", { noremap = true })
vim.api.nvim_set_keymap("i", "`", "``<Esc>i", { noremap = true })

-- AI Assistant keymaps
vim.api.nvim_set_keymap("i", "<C-e>", "<Plug>(copilot-dismiss)", { silent = true }) -- Dismiss Copilot suggestion


-- Markdown preview keymaps
vim.api.nvim_set_keymap("n", "<Leader>mp", ":PeekOpen<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>mc", ":PeekClose<CR>", { noremap = true })

-- QoL keymaps
vim.api.nvim_set_keymap("n", "<Leader>h", ":nohlsearch<CR>", { noremap = true })
