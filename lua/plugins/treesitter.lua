return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            autotag = true,
            auto_install = true,
            ensure_installed = {'markdown', 'embedded_template', 'lua', 'python', 'java', 'php', 'html', 'css', 'javascript', 'typescript', 'norg'},
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
