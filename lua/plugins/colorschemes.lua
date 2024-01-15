return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- set this to dark or light
            vim.cmd.colorscheme("rose-pine")
        end,
    },
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        lazy = false,
        priority = 1000,
    },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = false,
        priority = 1000,
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
    },
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
    },
    {
        "AlexvZyl/nordic.nvim",
        name = "nordic",
        lazy = false,
        priority = 1000,
    },
    {
        "yorik1984/newpaper.nvim",
        name = "newpaper",
        lazy = false,
        priority = 1000,
        -- config = function ()
        --     require("newpaper").setup({
        --         style = "dark"
        --     })
        -- end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
    }
}
