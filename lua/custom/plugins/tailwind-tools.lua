return {
  -- Tailwind tools
  {
    'luckasRanarison/tailwind-tools.nvim',
    -- name = 'tailwind-tools',
    event = 'VeryLazy',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {}, -- your configuration
  },
  {
    'laytan/tailwind-sorter.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-lua/plenary.nvim',
    },
    build = 'cd formatter && npm ci && npm run build',
    config = true,
  },
}
