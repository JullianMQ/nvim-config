return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "c",
                "cpp",
                "python",
                "java",
                "html",
                "htmldjango",
                "css",
                "php",
                "phpdoc",
                "sql",
            },
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
