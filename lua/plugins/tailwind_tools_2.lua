-- tailwind-tools.lua
return {
    {
        "luckasRanarison/tailwind-tools.nvim",
        event = "VeryLazy",
        name = "tailwind-tools",
        build = ":UpdateRemotePlugins",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-telescope/telescope.nvim", -- optional
        },
        opts = {}                            -- your configuration
    },
    {
        'laytan/tailwind-sorter.nvim',
        event = "VeryLazy",
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
            'nvim-lua/plenary.nvim' },
        build = 'cd formatter && npm ci && npm run build',
        config = true,
    },
}
