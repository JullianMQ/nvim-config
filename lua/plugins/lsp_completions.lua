return {
    {
        "hrsh7th/cmp-nvim-lsp",
        event = "VeryLazy",
    },
    {
        "hrsh7th/nvim-cmp",
        event = "VeryLazy",
        dependencies = {
            "luckasRanarison/tailwind-tools.nvim",
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        },
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_lua").load("~/.config/nvim/luasnippets")
            cmp.setup({
                -- AutoComplete to follow as we type
                view = {
                    entries = {
                        follow_cursor = true
                    }
                },
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                -- formatting = {
                --     format = require('lspkind').cmp_format({
                --         mode = "symbol",
                --         maxwidth = 50,
                --         ellipsis_char = '...',
                --         symbol_map = {Codeium = "", }
                --     })
                -- },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-8),
                    ["<C-f>"] = cmp.mapping.scroll_docs(8),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "nvim_lsp" },
                    { name = "codeium" },
                    { name = "buffer" },
                    { name = 'path' },
                })
            })
            -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                }),
                matching = { disallow_symbol_nonprefix_matching = false }
            })
        end,
    },
}
