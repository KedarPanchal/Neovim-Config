-- =================================
-- Configure Tooling and Utilities
-- =================================

return {
    -- Fuzzy Finding and File Search
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
        require('telescope').setup{
            defaults = {
                layout_strategy = 'horizontal',
                layout_config = {
                    horizontal = {
                        preview_width = 0.6,
                    },
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                },
            },
            extensions = {
                -- Extension configurations can go here
            },
        }
        end
    },


    -- Copilot Tab Completion
    { "github/copilot.vim" },


    -- LaTeX Support
    {
        "lervag/vimtex",
        lazy = false,
        config = function()
            vim.g.vimtex_view_method = 'skim'
            vim.g.vimtex_auto_compile = 1
        end,
    },


    -- Markdown Preview
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast",
        config = function()
            require("peek").setup({
                close_on_bdelete = true,
                syntax = true,
                theme = "dark",
                update_on_change = true,
                app = "webview",
                filetype = { "markdown" },
                throttle_at = 200000,
                throttle_time = "auto",
            })
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
    },


    -- Symbol Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "kdheepak/cmp-latex-symbols",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "latex_symbols", option = { strategy = 1 } },
                    {name = "buffer" },
                }),
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion menu
                    ["<CR>"] = cmp.mapping.confirm({ -- Confirm selection with Enter
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }),
                    ["<Tab>"] = cmp.mapping.select_next_item(), -- Navigate to next item
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Navigate to previous item;w
                })
            })
        end
    }
}
