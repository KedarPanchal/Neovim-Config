return {
    { "github/copilot.vim" },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "github/copilot.vim",
        },
        build = "make tiktoken",
        opts = {},
        config = function()
            require("CopilotChat").setup({
                suggestion = {
                    keymap = {
                        accept = "<C-Enter>",
                    },
                },
            })
        end,
    }
}
