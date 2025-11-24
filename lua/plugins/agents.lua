-- =========================
-- Configure AI Agents
-- =========================

return {
    { "github/copilot.vim" },
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false,
        lazy = false,
        opts = {
            instructions_file = "avante.md",
            provider = "groq",
            vendors = {
                groq = {
                    __inherited_from = "openai",
                    api_key_name = "GROQ_API_KEY",
                    endpoint = "https://api.groq.ai/openai/vi",
                    model = "openai/gpt-oss-120b",
                    max_tokens = 65536,
                    disable_tools = false,
                },
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "MunifTanjim/nui.nvim",
                lazy = true,
                version = false,
            },
            "nvim-telescope/telescope.nvim",
            "folke/snacks.nvim",
        },
        build = "make",
    }
}
