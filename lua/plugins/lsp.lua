-- =================================
-- Configure LSP and Completion
-- =================================

vim.filetype.add({
    extension = {
        tpp = "cpp",
    }
})

return {
    -- LSP Configuration
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("clangd")
        end,
    },
}
