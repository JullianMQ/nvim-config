return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- set this to dark or light
            vim.cmd.colorscheme("duskfox")
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
    -- Newpaper
    {
        "yorik1984/newpaper.nvim",
        name = "newpaper",
        lazy = false,
        priority = 1000,
        -- config = function()
        --     require("newpaper").setup({
        --         style = "dark"
        --     })
        -- end
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
    -- Miasma
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
    },
    -- Nightfox
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
    },
}
