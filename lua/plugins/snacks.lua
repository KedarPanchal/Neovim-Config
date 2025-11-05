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
            bigfile = { enabled = true },
            bufdelete = { enabled = true },
            git = { enabled = true },
            picker = { enabled = true },
            quickfile = { enabled = true },
            rename = { enabled = true },
            scope = { enabled = true },
            statuscolumn = { enabled = true },
            terminal = { enabled = true },
            win = { enabled = true },
            words = { enabled = true },
        },
    },
}
