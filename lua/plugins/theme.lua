-- =========================
-- Configure Editor Theme
-- =========================

return {
    -- Vague Theme
    {
        "vague-theme/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = false,
                bold = true,
                italic = true,

                style = {
                    boolean = "bold",
                    number = "none",
                    float = "none",
                    error = "bold",
                    comments = "italic",
                    conditionals = "none",
                    functions = "none",
                    headings = "bold",
                    operators = "none",
                    strings = "italic",
                    variables = "none",

                    keywords = "none",
                    keyword_return = "italic",
                    keywords_loop = "none",
                    keywords_label = "none",
                    keywords_exception = "none",

                    builtin_constants = "bold",
                    builtin_functions = "none",
                    builtin_types = "bold",
                    builtin_variables = "none",
                },

                plugins = {
                    telescope = {
                        match = "bold",
                    },
                },
            })
            vim.cmd.colorscheme("vague")
        end,
    },


    -- Treesitter Syntax Highlighting (required for Rainbow Brackets)
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { "lua", "python", "javascript", "html", "css", "json", "c", "cpp", "go" },
                highlight = {
                    enable = true,
                },
            }
        end,
    },


    -- Rainbow Brackets
    {
        "hiphish/rainbow-delimiters.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            vim.g.rainbow_delimiters = {
                strategy = {
                    [""] = "rainbow-delimiters.strategy.global",
                    vim = "rainbow-delimiters.strategy.local",
                },
                query = {
                    [""] = "rainbow-delimiters",
                    lua = "rainbow-blocks",
                },
                priority = {
                    [""] = 100,
                    lua = 210,
                },
                highlight = {
                    "RainbowDelimiterRed",
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterBlue",
                    "RainbowDelimiterOrange",
                    "RainbowDelimiterGreen",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterCyan",
                },
            }
        end,
    },

    -- Noice Command Line
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function()
            require("noice").setup({
                presets = {
                    bottom_search = true,
                    command_palette = true,
                    long_message_to_split = true,
                    inc_rename = false,
                    lsp_doc_border = false,
                },
            })
        end,
    },
}
