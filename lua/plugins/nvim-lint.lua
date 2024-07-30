return {
    "mfussenegger/nvim-lint",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            ["javascript, typescript, javascriptreact, typescriptreact"] = {"eslint_d", "biome"},
            php = { "phpcs" },
            python = { "ruff" },
            css = { "stylelint" },
            html = { "htmlhint" },
        }
        local lint_augroup = vim.api.nvim_create_augroup("Linter", {clear = true})

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<leader>ll", function()
            lint.try_lint()
        end, { desc = "Lint current file" })
    end,
}
