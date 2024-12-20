return {

  -- Tpope Plugins
  {
    'tpope/vim-fugitive',
    name = 'fugitive_vim',
    event = 'VeryLazy',
    config = function()
      vim.keymap.set('n', '<leader>gg', ':Git<CR>', { noremap = true, silent = true, desc = 'Open git' })
    end
  },
  {
    'tpope/vim-obsession',
    name = 'session_vim',
    event = 'VeryLazy',
  },

  -- Noice nvim
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('noice').setup {
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = true, -- add a border to hover docs and signature help
          command_palette = {
            views = {
              cmdline_popup = {
                position = {
                  row = 20,
                  col = '50%',
                },
              },
            },
          },
        },
      }
    end,
  },

  -- ts-autotag: Autotag for html tags
  {
    'windwp/nvim-ts-autotag',
    event = 'VeryLazy',
  },

  -- Flutter tools
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = function()
      require('flutter-tools').setup {}
    end,
  },

  -- Tiny plugins
  {
    'rachartier/tiny-code-action.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    event = 'LspAttach',
    config = function()
      require('tiny-code-action').setup()
    end,
  },
  {
    'rachartier/tiny-inline-diagnostic.nvim',
    event = 'LspAttach',
    config = function()
      require('tiny-inline-diagnostic').setup()
    end,
  },

  -- Better typescript errors
  { 'cseickel/diagnostic-window.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },

  -- Tmux navigator
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    cmd = {},
  },

  -- Undotree
  {
    'mbbill/undotree',
    event = 'VeryLazy',
  },

  -- Highlight Colors
  {
    'brenoprata10/nvim-highlight-colors',
  },

  -- Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>h', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<C-m>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-s>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-n>', function()
        harpoon:list():select(4)
      end)
    end,
  },

  -- Stevearc plugins
  -- Oil nvim
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
    },
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  },

  -- Quicker quickfix list
  {
    'stevearc/quicker.nvim',
    event = 'FileType qf',
    ---@module "quicker"
    ---@type quicker.SetupOptions
    opts = {},
    config = function()
      vim.keymap.set('n', '<leader>st', function()
        require('quicker').toggle()
      end, { desc = 'Toggle Quicker quickfix' })

      vim.keymap.set('n', '<leader>sl', function()
        require('quicker').toggle { loclist = true }
      end, { desc = 'Toggle Quicker loclist' })

      require('quicker').setup {
        keys = {
          {
            '>',
            function()
              require('quicker').expand { before = 2, after = 2, add_to_existing = true }
            end,
            desc = 'Expand quickfix context',
          },
          {
            '<',
            function()
              require('quicker').collapse()
            end,
            desc = 'Collapse quickfix context',
          },
        },
      }
    end,
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('aerial').setup {
        layout = {
          default_direction = 'prefer_left',
          placement = 'window',
        },
      }
    end,
  },

  -- Code playground
  {
    'GustavEikaas/code-playground.nvim',
    config = function()
      require('code-playground').setup()
    end,
  },

  -- Better Markdown Preview Controls
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      vim.g.mkdp_theme = 'dark'
      vim.g.mkdp_browser = 'firefox'
      -- Custom IP to open preview
      vim.g.mkdp_open_ip = ''
      -- To open preview for all people in the network
      vim.g.mkdp_open_to_the_world = 0
      -- To be used for other filetypes
      vim.g.mkdp_command_for_global = 0
    end,
    ft = { 'markdown', 'html' },
  },

  -- Supermaven
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
  },
}
