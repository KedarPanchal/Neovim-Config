-- =========================
-- Configure Git Integration
-- =========================

return {
    { "tpope/vim-fugitive" },
    { 
        "lewis6991/gitsigns.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
}
