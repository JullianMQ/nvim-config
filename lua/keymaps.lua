-- Keymaps
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

