return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				ensure_installed = {
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
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

            -- TODO: MAKE SURE TO UPDATE LANGUAGES TABLE WITH THE INSTALLED LSP
			local languages = {
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
			}
            for _, lang in ipairs(languages) do
                lspconfig[lang].setup({capabilities = capabilities})
            end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gf", vim.lsp.buf.declaration, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
