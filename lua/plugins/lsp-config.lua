return {
	{
		"neovim/nvim-lspconfig",
		-- config = function()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- local lspconfig = require("lspconfig")

			-- TODO: MAKE SURE TO UPDATE LANGUAGES TABLE WITH THE INSTALLED LSP
			-- local languages = {
			-- 	"lua_ls",
			-- 	"eslint",
			-- 	"svelte",
			-- 	"jdtls",
			-- 	"phpactor",
			-- 	"vtsls",
			-- 	"pyright",
			-- 	"vimls",
			-- }
			-- for _, lang in ipairs(languages) do
			-- 	lspconfig[lang].setup({ capabilities = capabilities })
			-- end

		-- end,
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
			-- require("mason-lspconfig").setup({
			-- 	auto_install = true,
			-- 	ensure_installed = {
			-- 		"lua_ls",
			-- 		"unocss",
			-- 		"svelte",
			-- 		"jdtls",
            --      choose only one php lsp
			-- 		"phpactor",
			-- 		"intelephense",
			-- 		"vtsls",
			-- 		"pyright",
			-- 		"vimls",
			-- 	},
			-- })
            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            })
		end,
	},
}
