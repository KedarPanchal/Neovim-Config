-- =========================
-- Configure AI Agents
-- =========================

return {
    -- Copilot Tab Completion
    { "github/copilot.vim" },


    -- Avante AI Agent Integration
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false,
        lazy = false,
        opts = {
            instructions_file = "avante.md",
            provider = "kat-coder", -- Default provider
            providers = {
                ["kat-coder"] = {
                    __inherited_from = "openai",
                    api_key_name = "OPENROUTER_API_KEY",
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "kwaipilot/kat-coder-pro:free",
                    display_name = "KAT Coder Pro",
                    max_tokens = 32768,
                    disable_tools = false,
                },
                ["qwen-coder"] = {
                    __inherited_from = "openai",
                    api_key_name = "OPENROUTER_API_KEY",
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "qwen/qwen3-coder:free",
                    display_name = "Qwen 3 Coder",
                    max_tokens = 32768,
                    disable_tools = false,
                },
                ["glm-air"] = {
                    __inherited_from = "openai",
                    api_key_name = "OPENROUTER_API_KEY",
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "z-ai/glm-4.5-air:free",
                    display_name = "GLM 4.5 Air",
                    max_tokens = 16384,
                    disable_tools = false,
                },
                ["grok-fast"] = {
                    __inherited_from = "openai",
                    api_key_name = "OPENROUTER_API_KEY",
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "x-ai/grok-4.1-fast:free",
                    display_name = "Grok 4.1 Fast",
                    max_tokens = 16384,
                    disable_tools = false,
                },
                ["groq"] = {
                    __inherited_from = "openai",
                    api_key_name = "GROQ_API_KEY",
                    endpoint = "https://api.groq.com/openai/v1",
                    model = "groq/compound",
                    display_name = "Groq Compound",
                    max_tokens = 8192,
                    disable_tools = false,
                },
            },
            web_search_engine = {
                provider = "tavily", -- Accessible through TAVILY_API_KEY environment variable
                proxy = nil,
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
        keys = {
            { "<leader>aa", "<cmd>AvanteAsk<cr>", desc = "Avante Ask" },
            { "<leader>ac", "<cmd>AvanteChat<cr>", desc = "Avante Chat" },
            { "<leader>at", "<cmd>AvanteToggle<cr>", desc = "Avante Toggle" },
            { "<leader>af", "<cmd>AvanteFocus<cr>", desc = "Avante Focus" },
            { "<leader>ad", "<cmd>AvanteClear<cmd>", desc = "Avante Clear" },
            { "<leader>as", function() require("avante.api").switch_provider() end, desc = "Avante Switch Provider" },
        },
        build = "make",
    }
}
