return {
    {
        "neovim/nvim-lspconfig",
        -- Server configurations
        opts = {
            inlay_hints = { enabled = true }
        },
        config = function()
            local on_attach = function(client, bufnr)
                if client.server_capabilities.inlayHintProvider then
                    vim.lsp.buf.inlay_hint(bufnr, true)
                end
            end

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- TODO: MAKE SURE TO UPDATE LANGUAGES TABLE WITH THE INSTALLED LSP
            local languages = {
                "lua_ls",
                "svelte",
                "jdtls",
                "emmet_language_server",
                "tsserver",
                "cssls",
                "html",
                "intelephense",
                "phpactor",
                "pyright",
                "vimls",
            }
            for _, lang in ipairs(languages) do
                lspconfig[lang].setup({ capabilities = capabilities })
            end
            -- LSP Keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover,
                { noremap = true, silent = true, desc = "Hover" })

            vim.keymap.set("n", "gr", vim.lsp.buf.references,
                { noremap = true, silent = true, desc = "Find references" })

            vim.keymap.set("n", "gd", vim.lsp.buf.definition,
                { noremap = true, silent = true, desc = "Find definition" })

            vim.keymap.set("n", "gf", vim.lsp.buf.declaration,
                { noremap = true, silent = true, desc = "Find declaration" })

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,
                { noremap = true, silent = true, desc = "Variable rename" })

            vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format,
                { noremap = true, silent = true, desc = "Format Code" })

            vim.keymap.set("n", "gi", function()
                    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
                end,
                { noremap = true, silent = true, desc = "Toggle inlay hint" })

            vim.keymap.set("n", "<leader>cl", function() vim.lsp.codelens.run() end,
                { noremap = true, silent = true, desc = "Code lens" })

            -- vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action,
            --     { noremap = true, silent = true })
            -- Change to tiny code action
            vim.keymap.set("n", "<leader>ca", function()
                require("tiny-code-action").code_action()
            end, { noremap = true, silent = true, desc = "Code Action" })
        end,
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        dependencies = { "mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                auto_install = true,
                ensure_installed = {
                    "lua_ls",
                    "svelte",
                    "jdtls",
                    "emmet_language_server",
                    "tsserver",
                    "cssls",
                    "html",
                    "intelephense",
                    "phpactor",
                    "pyright",
                    "vimls",
                },
            })
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers({
                -- function(lsp)
                --     local config = {
                --         capabilities = capabilities,
                --         on_attach = on_attach,
                --     }
                -- end,
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                -- Need to fix
                -- ["intelephense"] = function ()
                --     require("lspconfig").intelephense.setup({
                --         settings = {
                --             PHP = {
                --                 hint = { enable = true }
                --             },
                --         },
                --     })
                -- end,
                -- ["phpactor"] = function()
                --     require("lspconfig").phpactor.setup({
                -- "language_server_worse_reflection.inlay_hints.enable": false,
                -- "language_server_worse_reflection.inlay_hints.params": true,
                -- "language_server_worse_reflection.inlay_hints.types": false,
                -- settings = {
                -- "language_server_worse_reflection.inlay_hints.enable": false,
                -- "language_server_worse_reflection.inlay_hints.params": true,
                -- "language_server_worse_reflection.inlay_hints.types": false,
                -- hint = {
                --     enable = true,
                --     params = true,
                --     types = true,
                -- }
                -- },
                -- })
                -- end,
                ["lua_ls"] = function()
                    require("lspconfig").lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = { globals = { 'vim' } },
                                hint = { enable = true }
                            },
                        }
                    })
                end,
                require("lspconfig").emmet_language_server.setup({
                    filetypes = { "javascript", "php" }
                }),
                ["tsserver"] = function()
                    require("lspconfig").tsserver.setup({
                        settings = {
                            typescript = {
                                inlayHints = {
                                    includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all'
                                    includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                                    includeInlayVariableTypeHints = true,
                                    includeInlayFunctionParameterTypeHints = true,
                                    includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                                    includeInlayPropertyDeclarationTypeHints = true,
                                    includeInlayFunctionLikeReturnTypeHints = true,
                                    includeInlayEnumMemberValueHints = true,
                                },
                            },
                            javascript = {
                                inlayHints = {
                                    includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all'
                                    includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                                    includeInlayVariableTypeHints = true,

                                    includeInlayFunctionParameterTypeHints = true,
                                    includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                                    includeInlayPropertyDeclarationTypeHints = true,
                                    includeInlayFunctionLikeReturnTypeHints = true,
                                    includeInlayEnumMemberValueHints = true,
                                },
                            },
                        },
                    })
                end,
            })
        end,
    },
}
