return
    {
        "catppuccin/nvim", 
        lazy = false,
        name = "catpuccin",
        priority = 1000,
        config = function()
            vim.opt.background = "dark" -- set this to dark or light
            vim.cmd.colorscheme "catppuccin"
        end
    }
