return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            local wk = require("which-key")
            wk.register({
                ["<leader>f"] = {
                    f = { "Find File" },
                    r = { "Open Recent File" },
                    g = { "Grep File" },
                    b = { "Grep Buffer" },
                    h = { "Help" },
                    c = { "Format Code" },
                },
                ["<leader>"] = {
                    a = { "Add to Harpoon" },
                    e = { "Show Harpoon Menu" },
                },
                ["<leader>c"] = {
                    a = { "Code Actions" },
                },
                ["V"] = {
                    S = { "Surround b: (), B: {}, >: <>, <:Add args:>" },
                },
                ["c"] = {
                    s = { "Change inner surround, new surround" },
                    S = { "Change with space surround, new surround" },
                },
            })
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
}
