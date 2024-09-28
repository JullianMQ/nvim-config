return {
	--TODO: Install NERDFONT
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- NEOTREE KEYMAPS
		vim.keymap.set(
		    "n",
		    "<leader>t",
		    ":Neotree toggle position=right<CR>",
		    { noremap = true, silent = true }
		)
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                position = "right",
                width = 30,
            },
        })

	end,
}
