return {
    "adibhanna/laravel.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>la", ":Artisan<cr>", desc = "Laravel Artisan" },
        { "<leader>lc", ":Composer<cr>", desc = "Composer" },
        { "<leader>lr", ":LaravelRoute<cr>", desc = "Laravel Routes" },
        { "<leader>lm", ":LaravelMake<cr>", desc = "Laravel Make" },
    },
    config = function()
        require("laravel").setup({
            debug = true, -- debugging error info for laravel disable if needed
        })
    end,
}
