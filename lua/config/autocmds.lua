-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local markdown_group = vim.api.nvim_create_augroup("markdown_config", {
    clear = true,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "md", "txt", "markdown" },
    group = markdown_group,
    command = "set wrap linebreak colorcolumn=0",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "md", "txt", "markdown" },
  group = markdown_group,
  callback = function()
    vim.keymap.set("n", "j", "gj", { buffer = true, noremap = true, silent = true, desc = "Move down visually" })
    vim.keymap.set("n", "k", "gk", { buffer = true, noremap = true, silent = true, desc = "Move up visually" })
  end,
})
