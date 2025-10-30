-- =========================
-- Startup commands
-- =========================

vim.cmd([[
    autocmd VimEnter * botright terminal
    autocmd VimEnter * resize 10 | wincmd p
    autocmd VimEnter * NERDTree | wincmd p
    autocmd VimEnter * CopilotChat
    autocmd VimEnter * vertical resize 60 | wincmd p
]])
