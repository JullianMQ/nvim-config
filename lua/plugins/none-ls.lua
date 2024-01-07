return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                -- null_ls.builtins.formatting.ast_grep,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.djlint,
                null_ls.builtins.formatting.google_java_format,
                null_ls.builtins.formatting.phpcbf,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.pretty_php,
                null_ls.builtins.formatting.rustywind,
                null_ls.builtins.formatting.sql_formatter,
                null_ls.builtins.diagnostics.djlint,
                null_ls.builtins.diagnostics.curlylint,
                null_ls.builtins.diagnostics.eslint_d,
                -- null_ls.builtins.diagnostics.htmlhint,
                null_ls.builtins.diagnostics.phpcs,
                null_ls.builtins.diagnostics.pylama,
                -- null_ls.builtins.diagnostics.sonarlint-language-server,
                null_ls.builtins.diagnostics.sqlfluff,
                null_ls.builtins.diagnostics.stylelint,
                null_ls.builtins.diagnostics.typos,
            },
        })

        vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
    end,
}
