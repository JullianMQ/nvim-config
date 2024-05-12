return {
    -- Catppuccin
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catpuccin",
		priority = 1000,
		config = function()
			vim.o.background = "dark" -- set this to dark or light
			vim.cmd.colorscheme("nordic")
		end,
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
    -- Moonfly
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
	},
    -- Nightfly
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
	},
    -- Nordic
	{
		"AlexvZyl/nordic.nvim",
		name = "nordic",
		lazy = false,
		priority = 1000,
	},
    -- Newpaper
	{
		"yorik1984/newpaper.nvim",
		name = "newpaper",
		lazy = false,
		priority = 1000,
		-- config = function ()
		--     require("newpaper").setup({
		--         style = "dark"
		--     })
		-- end
	},
    -- Rose pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
	},
    -- OldWorld
    {
        "dgox16/oldworld.nvim",
        name = "oldworld",
        lazy = false,
        priority = 1000,
    },
    -- Mellow
    {
        "mellow-theme/mellow.nvim",
        name = "mellow",
        lazy = false,
        priority = 1000,
    },
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        priority = 1000
    }
}
