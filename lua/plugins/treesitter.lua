return {
    "nvim-treesitter/nvim-treesitter",
    update = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            autotag = true,
            auto_install = true,
            ensure_installed = {
                'embedded_template',
                'lua',
                'python',
                'java',
                'php',
                'html',
                'css',
                'javascript',
                'typescript',
                'vimdoc',
                'vim',
                'norg'
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
