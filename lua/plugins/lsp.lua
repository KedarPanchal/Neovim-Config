-- =================================
-- Configure LSP and Completion
-- =================================

return {
    {
        "neoclide/coc.nvim",
        branch = "release",
        config = function()
            -- Load CoC extensions
            vim.g.coc_global_extensions = {
                "coc-clangd",
                "coc-css",
                "coc-go",
                "coc-html",
                "coc-json",
                "coc-lua",
                "coc-markdownlint",
                "coc-pyright",
                "coc-tsserver",
            }
            -- Use Enter for navigating completion menu (CoC)
            vim.api.nvim_set_keymap('i', '<CR>',
                [[coc#pum#visible() ? coc#pum#next(1) : "\<CR>"]],
                { expr = true, silent = true }
            )
        end,
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
        ---@module "render-markdown"
        ---@type render.md.UserConfig
        restart_highlighter = true,
        opts = {
            -- Custom markdown rendering options can be set here
        },
    }
}
