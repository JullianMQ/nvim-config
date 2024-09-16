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
-- vim.api.nvim_create_autocmd({"InsertLeave","WinEnter"}, {
--   pattern = {"*.*"},
--   desc = "change folds to syntax at !insert mode",
--   command = "setlocal foldmethod=syntax"
-- })
-- vim.api.nvim_create_autocmd({"InsertEnter","WinLeave"}, {
--   pattern = {"*.*"},
--   desc = "change folds to manual at insert mode",
--   command = "setlocal foldmethod=manual"
-- })
vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  pattern = {"*.*"},
  desc = "change folds to manual at all times",
  command = "setlocal foldmethod=manual"
})
