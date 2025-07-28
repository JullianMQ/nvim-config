return {
	-- Tpope Plugins
	{
		"tpope/vim-fugitive",
		name = "fugitive_vim",
		event = "VeryLazy",
	},
	{
		"tpope/vim-obsession",
		name = "session_vim",
		event = "VeryLazy",
	},

	-- Noice nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("noice").setup({
				routes = {
					{
						view = "notify",
						filter = { event = "msg_showmode" },
					},
				},
				views = {
					cmdline_popup = {
						position = {
							row = 5,
							col = "50%",
						},
						size = {
							width = 60,
							height = "auto",
						},
					},
					popupmenu = {
						relative = "editor",
						position = {
							row = 8,
							col = "50%",
						},
						size = {
							width = 60,
							height = 10,
						},
						border = {
							style = "rounded",
							padding = { 0, 1 },
						},
						win_options = {
							winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
						},
					},
				},
			})
		end,
	},
	-- Lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				sections = {
					lualine_x = {
						{
							require("noice").api.statusline.mode.get,
							cond = require("noice").api.statusline.mode.has,
							color = { fg = "#ff9e64" },
						},
					},
				},
			})
		end,
	},
	-- ts-autotag: Autotag for html tags
	{
		"windwp/nvim-ts-autotag",
		event = "VeryLazy",
	},

	-- Flutter tools
	{
		"nvim-flutter/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
		config = function()
			require("flutter-tools").setup({})
		end,
	},

	-- Tiny plugins
	{
		"rachartier/tiny-code-action.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim" },
		},
		event = "LspAttach",
		config = function()
			require("tiny-code-action").setup({})
		end,
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
		config = function()
			require("tiny-inline-diagnostic").setup()
		end,
	},

	-- Better typescript errors
	{ "cseickel/diagnostic-window.nvim", dependencies = { "MunifTanjim/nui.nvim" } },

	-- Tmux navigator
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
		cmd = {},
	},

	-- Undotree
	{
		"mbbill/undotree",
		event = "VeryLazy",
	},

	-- Highlight Colors
	{
		"brenoprata10/nvim-highlight-colors",
	},

	-- Harpoon
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			-- REQUIRED
			harpoon:setup({})
			-- REQUIRED

			-- telescope config
			local conf = require("telescope.config").values
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers")
					.new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table({
						}),
						results = file_paths,
						previewer = conf.file_previewer({}),
						sorter = conf.generic_sorter({}),
					})
					:find()
			end
			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<leader>e", function()
				toggle_telescope(harpoon:list())
			end, { desc = "Harpoon Window" })
			vim.keymap.set("n", "<A-1>", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<A-2>", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<A-3>", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<A-4>", function()
				harpoon:list():select(4)
			end)
		end,
	},

	-- Quicker quickfix list
	{
		"stevearc/quicker.nvim",
		event = "FileType qf",
		---@module "quicker"
		---@type quicker.SetupOptions
		opts = {},
		config = function()
			require("quicker").setup({
				keys = {
					{
						">",
						function()
							require("quicker").expand({ before = 2, after = 2, add_to_existing = true })
						end,
						desc = "Expand quickfix context",
					},
					{
						"<",
						function()
							require("quicker").collapse()
						end,
						desc = "Collapse quickfix context",
					},
				},
			})
		end,
	},
	{
		"stevearc/aerial.nvim",
		opts = {},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("aerial").setup({
				layout = {
					default_direction = "prefer_left",
					placement = "window",
				},
			})
		end,
	},

	-- Code playground
	{
		"GustavEikaas/code-playground.nvim",
		config = function()
			require("code-playground").setup()
		end,
	},

	-- MARKDOWN RENDERING
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},

	-- Better Markdown Preview Controls
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_theme = "dark"
			vim.g.mkdp_browser = "firefox"
			-- Custom IP to open preview
			vim.g.mkdp_open_ip = ""
			-- To open preview for all people in the network
			vim.g.mkdp_open_to_the_world = 0
			-- To be used for other filetypes
			vim.g.mkdp_command_for_global = 0
		end,
		ft = { "markdown", "html" },
	},

	-- Supermaven
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	},

	-- Substitute NVIM
	{
		"gbprod/substitute.nvim",
		config = function()
			require("substitute").setup()
		end,
	},
}
