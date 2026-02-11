return {
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = {
                enabled = false,
            },
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            explorer = { enabled = false },
        },
        keys = {
            { "e", false },
            { "E", false },
            { "fe", false },
            { "fE", false },
        },
    },
}
