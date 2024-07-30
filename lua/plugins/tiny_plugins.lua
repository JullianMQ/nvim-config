return {
    {
        "rachartier/tiny-code-action.nvim",
        dependencies = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope.nvim"},
        },
        event = "LspAttach",
        config = function()
            require('tiny-code-action').setup()
        end
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        config = function()
            require('tiny-inline-diagnostic').setup()
        end
    }
}
