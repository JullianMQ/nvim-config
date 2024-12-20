return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>fo',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F][O]rmat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        python = { 'isort', 'black' },
        dart = { 'dcm' },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        [{ 'javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'jsx', 'tsx' }] = { 'prettierd', 'prettier', stop_after_first = true },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
