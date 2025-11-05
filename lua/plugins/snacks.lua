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
            ---@class snacks.dashboard.Config
            ---@field enabled? boolean
            ---@field sections snacks.dashboard.Section[]
            ---@field formats table<strings, snacks.dashboard.Text|fun(item:snacks.dashboard.Item, ctx:snacks.dashboard.Format.ctx):snacks.dashboard.Text>
            dashboard = {
                enabled = true,
                width = 60,
                row = nil,
                col = nil,
                pane_gap = 4,
                autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
                preset = {
                    -- Fuzzy finder preset
                    ---@type fun(action:string, opts:table)|nil
                    pick = nil,
                    -- Custom dashboard keymaps
                    ---@type snacks.dashboard.Item[]
                    keys = {
                        { icon = " ", desc = "New File", action = "ene | startinsert", key = "n" },
                        { icon = "󱧶 ", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')", key = "r" },
                        { icon = " ", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')", key = "f" },
                        { icon = "󰭷 ", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live-grep')", key = "t" },
                        { icon = " ", desc = "Config", action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })", key = "c" },
                        { icon = " ", desc = "Restore Session", section = "session", key = "s" },
                        { icon = "󰒲 ", desc = "Lazy", action = ":Lazy", key = "l", enabled = package.loaded.lazy ~= nil },
                        { icon = "󰐥 ", desc = "Quit Neovim", action = ":qa", key = "q" },
                    },
                    -- Header design
                    header = [[
 █████      █████   █████  ███                 
░░███      ░░███   ░░███  ░░░                  
 ░███ █████ ░███    ░███  ████  █████████████  
 ░███░░███  ░███    ░███ ░░███ ░░███░░███░░███ 
 ░██████░   ░░███   ███   ░███  ░███ ░███ ░███ 
 ░███░░███   ░░░█████░    ░███  ░███ ░███ ░███ 
 ████ █████    ░░███      █████ █████░███ █████
░░░░ ░░░░░      ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░ 
]],
                },
                formats = {
                    icon = function(item)
                        if item.file and item.icon == "file" or item.icon == "directory" then
                            return Snacks.dashboard.icon(item.file, item.icon)
                        end
                        return { item.icon, width = 2, hl = "icon" }
                    end,
                    footer = { "%s", align = "center" },
                    header = { "%s", align = "center" },
                    file = function(item, ctx)
                        local fname = vim.fn.fnamemodify(item.file, ":~")
                        fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
                        if #fname > ctx.width then
                            local dir = vim.fn.fnamemodify(fname, ":h")
                            local file = vim.fn.fnamemodify(fname, ":t")
                            if dir and file then
                                file = file:sub(-(ctx.width - #dir - 2))
                                fname = dir .. "/…" .. file
                            end
                        end
                        local dir, file = fname:match("^(.*)/(.+)$")
                        return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
                    end,
                },
                sections = {
                    -- Sections can be defined here
                    -- Left pane
                    {
                        pane = 1,
                        { section = "header" },
                        {
                            section = "keys",
                            gap = 1,
                            padding = 1,
                        },
                        {
                            section = "startup",
                            padding = 1,
                        },
                    },
                    {
                        pane = 2,
                        {
                            section = "terminal",
                            cmd = "fortune -s | cowsay",
                            padding = 1,    
                        },
                        {
                            section = "recent_files",
                            title = "Recent Files",
                            icon = " ",
                            padding = 1,
                        },
                        {
                            section = "projects",
                            title = "Projects",
                            icon = " ",
                            padding = 1,
                        },
                        {
                            section = "terminal",
                            title = "Git Status",
                            icon = " ",
                            enabled = function()
                                return Snacks.git.get_root() ~= nil
                            end,
                            cmd = "git status --short --branch --renames",
                            padding = 1,
                        },
                    }
                },
            },
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
