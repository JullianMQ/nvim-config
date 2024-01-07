return
    -- Available Themes
    -- 16color
    -- ayu_dark | ayu_light | ayu_mirage
    -- base16
    -- dracula
    -- everforest
    -- gruvbox_dark | gruvbox_light | gruvbox-material
    -- horizon
    -- iceberg_dark | iceberg_light
    -- horizon
    -- jellybeans
    -- material
    -- modus_vivendi
    -- molokai
    -- moonfly | nightfly
    -- nord
    -- OceanicNext
    -- onedark | onelight
    -- palenight
    -- papercolor_dark | papercolor_light
    -- powerline | powerline_dark
    -- pywal
    -- seoul256
    -- solarized_dark | solarized_light
    -- Tomorrow
    -- wombat
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "solarized_dark"
                }
            })
        end
    }
