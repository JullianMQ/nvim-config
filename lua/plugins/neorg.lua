return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = true,
    opts = {
        load = {
            ["core.concealer"] = {
                config = {
                    icon_preset = "varied",
                },
            },
            ["core.defaults"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        main = "~/neorg", -- Format: <name_of_workspace> = <path_to_workspace_root>
                        notes = "~/Documents/notes",
                    },
                    default_workspace = "main",
                    index = "index.norg", -- The name of the main (root) .norg file
                },
            },
        },
    },
}
