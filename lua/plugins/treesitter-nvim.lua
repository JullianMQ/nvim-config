return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = {
        indent = { enable = true },
        highlight = { enable = true },
        folds = { enable = true },
    }
}
