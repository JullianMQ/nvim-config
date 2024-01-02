-- Original VIMRC config typical stuff for vimrc
vim.cmd("set nocompatible")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set path+=**")
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")
vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set expandtab")
vim.cmd("set nobackup")
vim.cmd("set scrolloff=10")
vim.cmd("set nowrap")
vim.cmd("set incsearch")
vim.o.hlsearch = false
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set showcmd")
vim.cmd("set showmode")
vim.cmd("set showmatch")
vim.cmd("set history=1000")

-- Set wildignore patterns // can be left behind
vim.cmd("set wildmenu")
vim.cmd("set wildmode=list:longest")
vim.o.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'
vim.o.colorcolumn = "100"
vim.cmd([[highlight ColorColumn term=bold ctermfg=Cyan guifg=#80a0ff gui=bold]])

-- If the current file type is HTML, set indentation to 2 spaces
vim.api.nvim_exec([[
  autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
]], false)

-- If Neovim version is equal to or greater than 0.5, enable undofile
-- Even after saving and quitting
if vim.fn.has("nvim-0.5") then
  vim.o.undodir = '~/.vim/backup'
  vim.o.undofile = true
  vim.o.undoreload = 10000
end

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>\\', '``', {noremap = true, silent = true})

--Escape insert mode
vim.keymap.set('i', 'qq', '<ESC>', {noremap = true, silent = true})
vim.keymap.set('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Create space and below and go up
vim.keymap.set('n', '2o', 'o<ESC>o', {noremap = true, silent = true})
vim.keymap.set('n', '2O', 'O<ESC>O', {noremap = true, silent = true})

-- Center cursor when moving to the next word when searching
vim.keymap.set('n', 'n', 'nzz', {noremap = true, silent = true})
vim.keymap.set('n', 'N', 'Nzz', {noremap = true, silent = true})

-- Yank from cursor to the end of line without newline
vim.keymap.set('n', 'Y', 'y$h', {noremap = true, silent = true})

--Navigate split view better
vim.keymap.set('n', '<c-j>', '<c-w>j', {noremap = true, silent = true})
vim.keymap.set('n', '<c-k>', '<c-w>k', {noremap = true, silent = true})
vim.keymap.set('n', '<c-h>', '<c-w>h', {noremap = true, silent = true})
vim.keymap.set('n', '<c-l>', '<c-w>l', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>h', ':bn<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>l', ':bp<CR>', {noremap = true, silent = true})

--Resize split windows
vim.keymap.set('n', '<c-up>', '<c-w>+', {noremap = true, silent = true})
vim.keymap.set('n', '<c-down>', '<c-w>-', {noremap = true, silent = true})
vim.keymap.set('n', '<c-left>', '<c-w>>', {noremap = true, silent = true})
vim.keymap.set('n', '<c-right>', '<c-w><', {noremap = true, silent = true})

--NERDTREE mappings
-- vim.keymap.set('n', '<leader>t', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

-- Save Folds
vim.api.nvim_create_autocmd({"BufWinLeave"}, {
  pattern = {"*.*"},
  desc = "save view (folds), when closing file",
  command = "mkview",
})
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  pattern = {"*.*"},
  desc = "load view (folds), when opening file",
  command = "silent! loadview"
})

-- Lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Plugins
local plugins = {
    {
        "catppuccin/nvim", 
        lazy = false,
        name = "catpuccin",
        priority = 1000
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        name = "oxocarbon",
        priority = 1000
    },
    {
        "tpope/vim-commentary",
        name = "comment_line",
        priority = 100
    },
    {
        "tpope/vim-surround",
        name = "surround_line",
        priority = 100
    },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
}
-- OPTS
local opts = {}

require("lazy").setup(plugins, opts)

-- Telescope stuff
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- TREESITTER stuff
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {
        "lua",
        "javascript",
        "python",
        "c",
        "vim",
        "vimdoc",
        "cpp",
        "html",
        "css",
        "java",
        "htmldjango",
        "php",
        "phpdoc",
        "sql",
        "typescript"
    },
    highlight = { enable = true},
    indent = { enable = true},
})

-- Colorscheme
require("catppuccin").setup()
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocarbon"
