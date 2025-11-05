-- =========================
-- snacks.nvim configuration
-- =========================

return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            ---@type table<string, snacks.win.Config>
            styles = {
                -- Style configurations can be defined here
            },
            bigfile = { enabled = true },
            bufdelete = { enabled = true },
            git = { enabled = true },
            notifier = { enabled = true },
            picker = { enabled = true },
            quickfile = { enabled = true },
            rename = { enabled = true },
            scope = { enabled = true },
            statuscolumn = { enabled = true },
            terminal = { enabled = true },
            win = { enabled = true },
            words = { enabled = true },
        },
        keys = {
            -- Keybindings can be defined here if needed
        },
        init = function()
            -- Keybindings and function calls can be set up here if needed
        end,
    },
}
