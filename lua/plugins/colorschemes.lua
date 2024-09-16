return {
    {
        "zaldih/themery.nvim",
        lazy = false,
        priority = 1000,
        config = function()
        require("themery").setup({
            themes = {
                "catppuccin-latte",
                "catppuccin-mocha",
                "catppuccin-frappe",
                "catppuccin-macchiato",
                "catppuccin-macchiato",
                "carbonfox",
                "gruvbox-material",
                "everforest",
                "dracula",
                "dracula-soft",
                "kanagawa-wave",
                "kanagawa-lotus",
                "kanagawa-paper",
                "kanagawa-dragon",
                "moonfly",
                "nightfly",
                "nordic",
                "nordfox",
                "rose-pine-dawn",
                "rose-pine-main",
                "rose-pine-moon",
                "flow",
                "solarized-osaka-day",
                "solarized-osaka-moon",
                "solarized-osaka-night",
                "solarized-osaka-storm",
                "miramare",
                "nightfox",
                "apprentice",
                "alduin",
                "spacegray",
                "monrovia",
            },
        })
        end,

    },
    -- Catppuccin
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- set this to dark or light
            vim.opt.termguicolors = true
            -- vim.cmd.colorscheme("miramare")
        end,
    },
    -- Dracula
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        lazy = false,
        priority = 1000,
    },
    -- Kanagawa
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = false,
        priority = 1000,
    },
    -- Kanagawa Paper
    {
        "sho-87/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    -- Moonfly
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
    },
    -- Nightfly
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
    },
    -- Nordic
    {
        "AlexvZyl/nordic.nvim",
        name = "nordic",
        lazy = false,
        priority = 1000,
    },
    -- Rose pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
    },
    -- flow
    {
        "0xstepit/flow.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("flow").setup {
                transparent = true,       -- Set transparent background.
                fluo_color = "orange",    --  Fluo color: pink, yellow, orange, or green.
                mode = "normal",          -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
                aggressive_spell = false, -- Display colors for spell check.
            }

            -- vim.cmd "colorscheme flow"
        end,
    },
    -- Toggle Transparent Background
    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        priority = 1000
    },
    -- Solarized Osaka
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    -- Nightfox
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
    },
    -- Miramare
    {
        "franbach/miramare",
        name = "miramare",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.miramare_enable_italic = 1
            vim.g.miramare_disable_italic_comment = 1
        end,
    },
    -- Apprentice
    {
        "romainl/Apprentice",
        name = "apprentice",
        lazy = false,
        priority = 1000,
    },
    -- Alduin
    {
        "AlessandroYorba/Alduin",
        name = "alduin",
        lazy = false,
        priority = 1000,
    },
    -- Monrovia
    {
        "iceisspetrel/Monrovia",
        name = "monrovia",
        lazy = false,
        priority = 1000,
    },
    -- Spacegray
    {
        "vim-scripts/Spacegray.vim",
        name = "spacegray",
        lazy = false,
        priority = 1000,
    },
    {
        "sainnhe/everforest",
        name = "everforest",
        lazy = false,
        priority = 1000,
    },
    {
        "sainnhe/gruvbox-material",
        name = "gruvbox-material",
        lazy = false,
        priority = 1000,
    },
}
