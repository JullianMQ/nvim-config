vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'

vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.cmd 'set wildmenu'
vim.cmd 'set wildmode=list:longest'
vim.o.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.git,~/*,*.zip'
vim.g.autoformat = false

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  command = 'setlocal number',
})

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'no'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = false
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 30

-- Set spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Column for best practice code length
vim.o.colorcolumn = '80'

-- Set darkmode
vim.o.background = 'dark'

-- Neorg setup
vim.opt.conceallevel = 3

-- Annoying inline diagnostics
-- vim.diagnostic.config {
--   virtual_text = false,
--   signs = {
--     text = {
--       [vim.diagnostic.severity.ERROR] = '',
--       [vim.diagnostic.severity.WARN] = '',
--     },
--     linehl = {
--       [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
--     },
--     numhl = {
--       [vim.diagnostic.severity.WARN] = 'WarningMsg',
--     },
--   },
-- }

-- Save Folds
-- vim.api.nvim_create_autocmd({ 'BufWinLeave' }, {
--   pattern = { '*.*' },
--   desc = 'save view (folds), when closing file',
--   command = 'mkview',
-- })
-- vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
--   pattern = { '*.*' },
--   desc = 'load view (folds), when opening file',
--   command = 'silent! loadview',
-- })
-- -- vim.api.nvim_create_autocmd({"InsertLeave","WinEnter"}, {
-- --   pattern = {"*.*"},
-- --   desc = "change folds to syntax at !insert mode",
-- --   command = "setlocal foldmethod=syntax"
-- -- })
-- -- vim.api.nvim_create_autocmd({"InsertEnter","WinLeave"}, {
-- --   pattern = {"*.*"},
-- --   desc = "change folds to manual at insert mode",
-- --   command = "setlocal foldmethod=manual"
-- -- })
-- vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
--   pattern = { '*.*' },
--   desc = 'change folds to manual at all times',
--   command = 'setlocal foldmethod=manual',
-- })
