vim.g.mapleader = " "
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

-- OPTS
---@diagnostic disable-next-line: unused-local
-- local opts = {
-- }

require("lazy").setup("plugins")
require("vimrc")
require("folds")
require("keymaps")
require("nvim-ts-autotag").setup()
require("nvim-highlight-colors").setup()
require("neorg").setup()
