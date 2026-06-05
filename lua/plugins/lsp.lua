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
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
        end,
    },
}
