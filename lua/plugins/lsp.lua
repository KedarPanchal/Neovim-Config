return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        -- Use Enter for navigating completion menu (CoC)
        vim.api.nvim_set_keymap('i', '<CR>',
          [[coc#pum#visible() ? coc#pum#next(1) : "\<CR>"]],
          { expr = true, silent = true }
        )
    end,
}
