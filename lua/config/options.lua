-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.guicursor =
  "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.cmd("set wildmenu")
vim.cmd("set path+=**")
vim.cmd("set wildmode=list:longest")
vim.o.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.git,~/*,*.zip"
vim.g.autoformat = false

vim.g.netrw_bufsettings = "noma nomod nu nowrap ro nobl"
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  command = "setlocal number",
})

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "no"

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
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 20

-- Set spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Column for best practice code length
vim.o.colorcolumn = "80"

-- Set darkmode
vim.o.background = "dark"

-- Neorg setup
vim.opt.conceallevel = 3
