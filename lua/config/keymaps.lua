-- =========================
-- Keymaps configuration 
-- ========================= 

vim.g.mapleader = " " -- Space as leader
vim.g.maplocalleader = "," -- Comma as local leader (for plugins)

-- Terminal mode keymaps
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]]) -- Escape to normal mode in terminal

vim.keymap.set("n", "<Leader>t<Up>", ":topleft split | resize 15 | terminal<CR>")
vim.keymap.set("n", "<Leader>t<Down>", ":botright split | resize 15 | terminal<CR>")
vim.keymap.set("n", "<Leader>t<Left>", ":topleft vsplit | vertical resize 60 | terminal<CR>")
vim.keymap.set("n", "<Leader>t<Right>", ":botright vsplit | vertical resize 60 | terminal<CR>")

vim.keymap.set("n", "<Leader>tk", ":topleft split | resize 15 | terminal<CR>")
vim.keymap.set("n", "<Leader>tj", ":botright split | resize 15 | terminal<CR>")
vim.keymap.set("n", "<Leader>th", ":topleft vsplit | vertical resize 60 | terminal<CR>")
vim.keymap.set("n", "<Leader>tl", ":botright vsplit | vertical resize 60 | terminal<CR>")

-- File explorer keymaps
vim.keymap.set("n", "<Leader>f", ":Telescope find_files<CR>")

-- Bracket keymaps
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "[", "[]<Esc>i")
vim.keymap.set("i", "\"", "\"\"<Esc>i")
vim.keymap.set("i", "'", "''<Esc>i")
vim.keymap.set("i", "`", "``<Esc>i")

-- AI Assistant keymaps
vim.keymap.set("i", "<C-e>", "<Plug>(copilot-dismiss)", { silent = true }) -- Dismiss Copilot suggestion

-- Markdown preview keymaps
vim.keymap.set("n", "<Leader>mp", ":PeekOpen<CR>")
vim.keymap.set("n", "<Leader>mc", ":PeekClose<CR>")

-- QoL keymaps
vim.keymap.set("n", "<Leader>h", ":nohlsearch<CR>") -- Clear highlights
vim.keymap.set("n", "<Leader>gd", "<Plug>(coc-definition)") -- Go to definition
vim.keymap.set("n", "<Leader>gi", "<Plug>(coc-implementation)") -- Go to implementation

-- Building and running keymaps
vim.keymap.set("n", "<Leader>cmc", "<Cmd>cmake -S . -B build<CR>")
vim.keymap.set("n", "<Leader>cmb", "<Cmd>cmake --build build<CR>")
vim.keymap.set("n", "<Leader>cma", "<Cmd>cmake -S . -B build && cmake --build build<CR>")

vim.keymap.set("n", "<Leader>uv", "<Cmd>uv run %<CR>")

vim.keymap.set("n", "<Leader>cbb", "<Cmd>cabal build<CR>")
vim.keymap.set("n", "<Leader>cbr", "<Cmd>cabal run<CR>")
vim.keymap.set("n", "<Leader>cba", "<Cmd>cabal build && cabal run<CR>")
