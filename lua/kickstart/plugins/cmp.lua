return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    opts = {
      performance = {
        debounce = 0,
        throttle = 0,
      },
    },
    -- event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          -- Build Step is needed for regex support in snippets.
          -- This step is not supported in many windows environments.
          -- Remove the below condition to re-enable on windows.
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          --    See the README about individual language/framework/plugin snippets:
          --    https://github.com/rafamadriz/friendly-snippets
          -- {
          'rafamadriz/friendly-snippets',
          config = function()
            -- require('luasnip.loaders.from_vscode').lazy_load()
            -- require("luasnip.loaders.from_lua").load("~/.config/nvim/lua/snippets")
          end,
          -- },
        },
      },
      'saadparwaiz1/cmp_luasnip',

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'luckasRanarison/tailwind-tools.nvim',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'
      require('luasnip.loaders.from_vscode').lazy_load()
      require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets"})
      local ls = require 'luasnip'
      ls.config.setup {}

      cmp.setup {
        view = {
          entries = {
            name = 'custom',
            selection_order = 'top_down',
            follow_cursor = true,
          },
        },
        snippet = {
          expand = function(args)
            ls.lsp_expand(args.body)
          end,
        },
        -- completion = { completeopt = 'menu,menuone,noinsert' },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        -- For an understanding of why these mappings were
        -- chosen, you will need to read `:help ins-completion`
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          -- ['<Tab>'] = cmp.mapping.select_next_item(),
          -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm { select = false },
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete {},
          ['<C-l>'] = cmp.mapping(function()
            if ls.expand_or_locally_jumpable() then
              ls.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if ls.locally_jumpable(-1) then
              ls.jump(-1)
            end
          end, { 'i', 's' }),

          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
        },
        sources = {
          {
            name = 'lazydev',
            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
            group_index = 0,
          },
          { name = 'luasnip' },
          { name = 'nvim_lsp' },
          { name = 'path' },
        },
      }
      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' },
        },
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
        }, {
          { name = 'cmdline' },
        }),
        ---@diagnostic disable-next-line: missing-fields
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
