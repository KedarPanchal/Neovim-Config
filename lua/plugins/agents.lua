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
            provider = "openrouter",
            providers = {
                groq = {
                    __inherited_from = "openai",
                    api_key_name = "GROQ_API_KEY",
                    endpoint = "https://api.groq.com/openai/v1",
                    model = "groq/compound",
                    max_tokens = 8192,
                    disable_tools = false,
                },
                openrouter = {
                    __inherited_from = "openai",
                    api_key_name = "OPENROUTER_API_KEY",
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "x-ai/grok-4.1-fast",
                    max_tokens = 65535,
                    disable_tools = false,
                }
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
