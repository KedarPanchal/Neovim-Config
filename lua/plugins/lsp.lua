-- =================================
-- Configure LSP and Completion
-- =================================

return {
    -- Coc LSP
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
                "coc-java",
                "coc-json",
                "coc-lua",
                "coc-markdownlint",
                "coc-pyright",
                "coc-r-lsp",
                "coc-sql",
                "coc-tsserver",
                "coc-vimtex",
                "coc-xml",
            }
            -- Use Enter for navigating completion menu (CoC)
            vim.api.nvim_set_keymap('i', '<CR>',
                [[coc#pum#visible() ? coc#pum#next(1) : "\<CR>"]],
                { expr = true, silent = true }
            )
        end,
    },


    -- Markdown Renderer
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
        ---@module "render-markdown"
        ---@type render.md.UserConfig
        restart_highlighter = true,
        opts = {
            -- Custom markdown rendering options can be set here
        },
    },


    -- RStudio-like workflow
    {
        "R-nvim/R.nvim",
        lazy = false,
        config = function()
            require("r").setup{
                hook = {
                    on_filetype = function()
                        -- Map Enter to execute R code in the current line in normal mode and the selection in visual mode
                        vim.api.nvim_set_keymap('n', '<CR>', ':RSendLine<CR>', { noremap = true, silent = true })
                        vim.api.nvim_set_keymap('v', '<CR>', ':RSendSelection<CR>', { noremap = true, silent = true })
                    end,
                },
                R_args = { "--quiet", "--no-save" },
            }
        end,
    },


    -- LaTeX Support
    {
        "lervag/vimtex",
        lazy = false,
        config = function()
            vim.g.vimtex_view_method = 'zathura'
        end,
    },
}
