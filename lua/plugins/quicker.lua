return {
    'stevearc/quicker.nvim',
    event = "FileType qf",
    ---@module "quicker"
    ---@type quicker.SetupOptions
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>sf", function()
                require("quicker").toggle()
            end,
            { desc = "Toggle Quicker quickfix", })

        vim.keymap.set("n", "<leader>sl", function()
                require("quicker").toggle({ loclist = true })
            end,
            { desc = "Toggle Quicker loclist", })

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
    end
}
