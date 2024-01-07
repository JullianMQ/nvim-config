return
    {
        {
            "williamboman/mason.nvim",
            config = function()
                require("mason").setup()
            end
        },
        {
            "williamboman/mason-lspconfig.nvim",
            config = function()
                require("mason-lspconfig").setup
                {
                    ensure_installed =
                        {
                            "lua_ls",
                            "bashls",
                            "clangd",
                            "emmet_ls",
                            "emmet_language_server",
                            "cssls",
                            "cssmodules_ls",
                            "tailwindcss",
                            "unocss",
                            "eslint",
                            "svelte",
                            "html",
                            "htmx",
                            "sqlls",
                            "jdtls",
                            "tsserver",
                            "vtsls",
                            "intelephense",
                            "pyright",
                            -- "pylsp",
                            "vimls",
                        },
                }
            end
        },
        {
            "neovim/nvim-lspconfig",
            config = function()
                local lspconfig = require('lspconfig')
                lspconfig.lua_ls.setup({})
                lspconfig.bashls.setup({})
                lspconfig.clangd.setup({})
                lspconfig.emmet_ls.setup({})
                lspconfig.emmet_language_server.setup({})
                lspconfig.cssls.setup({})
                lspconfig.cssmodules_ls.setup({})
                lspconfig.tailwindcss.setup({})
                lspconfig.unocss.setup({})
                lspconfig.eslint.setup({})
                lspconfig.svelte.setup({})
                lspconfig.html.setup({})
                lspconfig.htmx.setup({})
                lspconfig.sqlls.setup({})
                lspconfig.jdtls.setup({})
                lspconfig.tsserver.setup({})
                lspconfig.vtsls.setup({})
                lspconfig.intelephense.setup({})
                lspconfig.pyright.setup({})
                -- lspconfig.pylsp.setup({})
                lspconfig.vimls.setup({})

                vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                vim.keymap.set('n', 'gf', vim.lsp.buf.declaration, {})
                vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            end
        }
    }
