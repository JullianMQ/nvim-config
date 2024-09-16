return {
    {
        "folke/which-key.nvim",
        lazy = false,
        opts = {
            triggers = {
                { "<auto>", mode = "nixsot" },
            },
        },
        config = function()
            local wk = require("which-key")
            wk.add({

                { "<leader>a",         desc = "Add to Harpoon" },
                { "<leader>ca",        desc = "Code Actions" },
                { "<leader>cl",        desc = "Code Lens" },
                { "<leader>cr",        desc = "Code Rename" },
                { "<leader>e",         desc = "Show Harpoon Menu" },
                { "<leader>fb",        desc = "Grep Buffer" },
                { "<leader>fc",        desc = "Format Code" },
                { "<leader>ff",        desc = "Find File" },
                { "<leader>fg",        desc = "Grep File" },
                { "<leader>o",         desc = "Add line below normal" },
                { "<leader><leader>o", desc = "Add line above normal" },
                { "<leader><leader>w", desc = "Save all and quit" },
                { "<leader><leader>q", desc = "Quit without saving" },
                { "<leader>sl",        desc = "Select to end of line" },
                { "<leader>sa",        desc = "Select all" },
                { "<leader>yae",       desc = "Yank all" },
                { "<leader>gl",        desc = "Go to end of line" },
                { "<leader>fh",        desc = "Help" },
                { "<leader>rn",        desc = "Variable Rename" },
                { "<leader>fr",        desc = "Open Recent File" },
                { "VS",                desc = "Surround b: (), B: {}, >: <>, <:Add args:>" },
                { "cS",                desc = "Change with space surround, new surround" },
                { "cs",                desc = "Change inner surround, new surround" },
                { "gpu",               desc = "Git push" },
                { "gpl",               desc = "Git pull" },
                { "gcm",               desc = "Git commit" },
                { "gaf",               desc = " Git add" },
                { "gdf",               desc = " Git diff" },
                { "gdv",               desc = " Git diff vertical split three way" },
                { "gy",                desc = "YankAssassin Default" },
                { "<leader>gy",        desc = "YankAssassin No Move" },
                { "<leader>fm",        desc = "Flash jump" },
                { "<leader>ft",        desc = "Flash Treesitter" },
                { "<leader><leader>f", desc = "Toggle Flash" },
                { '<leader><leader>t', desc = "Telescope" },
            })
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
}
