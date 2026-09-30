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
            vim.lsp.enable("hls")
            vim.lsp.enable("julials")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("vtsls")
            vim.lsp.enable("wgsl_analyzer")
        end,
    },
}
