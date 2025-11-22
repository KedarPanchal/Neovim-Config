-- =================================
-- Configure LSP and Completion
-- =================================

return {
    -- nvim-cmp (completion)
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",       -- LSP source for nvim-cmp
        "hrsh7th/cmp-buffer",         -- Buffer completions
        "hrsh7th/cmp-path",           -- Path completions
        "saadparwaiz1/cmp_luasnip",   -- Snippet completions
        "L3MON4D3/LuaSnip",           -- Snippet engine
      },
      config = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")
        cmp.setup({
          mapping = {
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          },
          sources = {
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
            { name = "luasnip" },
            { name = "copilot", group_index = 2 }
          },
          formatting = {
            format = lspkind.cmp_format({
                mode = "symbol", 
                max_width = 100,
                ellipsis_char = "...", 
                show_labelDetails = true,
                symbol_map = {
                    Copilot = ""
                }
            }),
            before = function(entry, vim_item)
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                    copilot = "[Copilot]",
                })[entry.source.name]
                return vim_item
            end,
          },
        })
      end,
    },
    -- LSP config
    {
      "neovim/nvim-lspconfig",
      config = function()
        local servers = {
          clangd         = {},   -- C/C++
          cssls          = {},   -- CSS
          gopls          = {},   -- Go
          html           = {},   -- HTML
          jsonls         = {},   -- JSON
          lua_ls         = {},   -- Lua (formerly sumneko_lua)
          pyright        = {},   -- Python
          tsserver       = {},   -- TypeScript/JavaScript
          -- add other servers as needed
        }
        for server, config in pairs(servers) do
          vim.lsp.config(server, config)
        end
      end,
    },
    -- Markdown rendering (same as your original)
    {
      "MeanderingProgrammer/render-markdown.nvim",
      dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
      restart_highlighter = true,
      opts = {
        -- Custom markdown rendering options can be set here
      },
    },
    { "onsails/lspkind.nvim" }
}
