return {
  {
    'sainnhe/gruvbox-material',
    name = 'gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  {
    'sainnhe/everforest',
    name = 'everforest',
    lazy = false,
    priority = 1000,
  },
  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catpuccin',
    priority = 1000,
  },
  -- Dracula
  {
    'Mofiqul/dracula.nvim',
    name = 'dracula',
    lazy = false,
    priority = 1000,
  },
  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    lazy = false,
    priority = 1000,
  },
}
