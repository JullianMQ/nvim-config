return {
    -- Available options:
    --     catppuccin
    --     dracula
    --     kanagawa
    --     moonfly/nightfly
    --     oxocarbon
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            vim.opt.background = "light" -- set this to dark or light
            vim.cmd.colorscheme("moonfly")
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
        "nyoom-engineering/oxocarbon",
        name = "oxocarbon",
        lazy = false,
        priority = 1000,
    },
    {
        "AlexvZyl/nordic.nvim",
        name = "nordic",
        lazy = false,
        priority = 1000,
    },
}
