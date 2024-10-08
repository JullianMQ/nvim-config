return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black", "ruff" },
                ["html, css, javascript, typescript"] = { "prettier", "prettierd" },
                -- php = { "php-cs-fixer", "pretty-php" },
                php = { "pretty-php" },
            },
        })
    end,
    opts = {},
}
