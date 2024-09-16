return {
	"stevearc/oil.nvim",
    lazy = false,
	opts = {
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    },
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
