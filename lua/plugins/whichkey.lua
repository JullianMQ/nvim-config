return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            local wk = require("which-key")
            wk.add({

                { "<leader>a",  desc = "Add to Harpoon" },
                { "<leader>ca", desc = "Code Actions" },
                { "<leader>e",  desc = "Show Harpoon Menu" },
                { "<leader>fb", desc = "Grep Buffer" },
                { "<leader>fc", desc = "Format Code" },
                { "<leader>ff", desc = "Find File" },
                { "<leader>fg", desc = "Grep File" },
                { "<leader>fh", desc = "Help" },
                { "<leader>fr", desc = "Open Recent File" },
                { "VS",         desc = "Surround b: (), B: {}, >: <>, <:Add args:>" },
                { "cS",         desc = "Change with space surround, new surround" },
                { "cs",         desc = "Change inner surround, new surround" },
            })
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
}
