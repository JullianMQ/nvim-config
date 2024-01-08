return
    {
        {
            "williamboman/mason.nvim",
            lazy = false,
            config = function()
                require("mason").setup()
            end
        },
        {
            "williamboman/mason-lspconfig.nvim",
            lazy = false,
            config = function()
                require("mason-lspconfig").setup
                {
                    auto_install = true,
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
            lazy = false,
            config = function()
                local capabilities = require('cmp_nvim_lsp').default_capabilities()

                local lspconfig = require('lspconfig')
                lspconfig.lua_ls.setup({
                capabilities = capabilities})
                lspconfig.bashls.setup({
                capabilities = capabilities})
                lspconfig.clangd.setup({
                capabilities = capabilities})
                lspconfig.emmet_ls.setup({
                capabilities = capabilities})
                lspconfig.emmet_language_server.setup({
                capabilities = capabilities})
                lspconfig.cssls.setup({
                capabilities = capabilities})
                lspconfig.cssmodules_ls.setup({
                capabilities = capabilities})
                lspconfig.tailwindcss.setup({
                capabilities = capabilities})
                lspconfig.unocss.setup({
                capabilities = capabilities})
                lspconfig.eslint.setup({
                capabilities = capabilities})
                lspconfig.svelte.setup({
                capabilities = capabilities})
                lspconfig.html.setup({
                capabilities = capabilities})
                lspconfig.htmx.setup({
                capabilities = capabilities})
                lspconfig.sqlls.setup({
                capabilities = capabilities})
                lspconfig.jdtls.setup({
                capabilities = capabilities})
                lspconfig.tsserver.setup({
                capabilities = capabilities})
                lspconfig.vtsls.setup({
                capabilities = capabilities})
                lspconfig.intelephense.setup({
                capabilities = capabilities})
                lspconfig.pyright.setup({
                capabilities = capabilities})
                -- lspconfig.pylsp.setup({
                -- capabilities = capabilities})
                lspconfig.vimls.setup({
                capabilities = capabilities})

                vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                vim.keymap.set('n', 'gf', vim.lsp.buf.declaration, {})
                vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            end
        }
    }
