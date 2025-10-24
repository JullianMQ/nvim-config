local function enable_transparency() -- took this from tonybanters config
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material", lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight-storm")
			-- vim.cmd("hi Directory guibg=NONE")
			-- vim.cmd("hi SignColumn guibg=NONE")
			-- enable_transparency()
		end,
	},
	{
		"sainnhe/everforest",
		name = "everforest",
		lazy = false,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catpuccin",
		priority = 1000,
	},
	-- Dracula
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		lazy = false,
		priority = 1000,
	},
	-- Kanagawa
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,
		priority = 1000,
	},
}
