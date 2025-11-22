-- =========================
-- Configure AI Agents
-- =========================

return {
    {
        "zbirenbaum/copilot-cmp",
        event = "InsertEnter",
        config = function()
            require("copilot_cmp").setup()
        end,
        dependencies = {
            "zbirenbaum/copilot.lua",
            config = function()
                require("copilot").setup {
                    suggestion = { enabled = false },
                    panel = { enabled = false },
                }
            end,
        },
    }
}
