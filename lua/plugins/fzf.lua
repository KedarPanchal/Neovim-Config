-- =========================
-- Configure Fuzzy Finder
-- =========================

return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function   ()
        require('telescope  ').setup{
            defaults    = {
                    layout_strategy = 'horizontal',
                    layout_config =     {
                    horizontal  = {
                            preview_width = 0.6,
                        },
                    },
                },
                pickers =   {
                    find_files =    {
                    theme = "   dropdown",
                    },
                },
                extensions = {
                    -- Extension configurations can go here
                },
            }
        end
    },
}
