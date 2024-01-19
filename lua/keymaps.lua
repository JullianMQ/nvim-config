local keymap = vim.keymap
-- Keymaps
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
keymap.set("v", "<C-s>", ":w<CR>", { noremap = true, silent = true })
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { noremap = true, silent = true })

-- Go back to last cursor position
keymap.set("n", "<leader>\\", "``", { noremap = true, silent = true })

-- Auto complete pairs
keymap.set("i", "(", "()<ESC>i", { noremap = true, silent = true })
keymap.set("i", "{", "{}<ESC>i", { noremap = true, silent = true })
keymap.set("i", "[", "[]<ESC>i", { noremap = true, silent = true })
keymap.set("i", "\"", "\"\"<ESC>i", { noremap = true, silent = true })
keymap.set("i", "\'", "\'\'<ESC>i", { noremap = true, silent = true })
keymap.set("i", "<?", "<?php?><ESC>hi", { noremap = true, silent = true })

--Escape insert mode
keymap.set("i", "qq", "<ESC>", { noremap = true, silent = true })
keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })

-- Create space and below and go up
keymap.set("n", "2o", "o<ESC>o", { noremap = true, silent = true })
keymap.set("n", "2O", "O<ESC>O", { noremap = true, silent = true })

-- Center cursor when moving to the next word when searching
keymap.set("n", "n", "nzz", { noremap = true, silent = true })
keymap.set("n", "N", "Nzz", { noremap = true, silent = true })

-- Yank from cursor to the end of line without newline
keymap.set("n", "Y", "y$h", { noremap = true, silent = true })

--Navigate split view better
keymap.set("n", "<c-j>", "<c-w>j", { noremap = true, silent = true })
keymap.set("n", "<c-k>", "<c-w>k", { noremap = true, silent = true })
keymap.set("n", "<c-h>", "<c-w>h", { noremap = true, silent = true })
keymap.set("n", "<c-l>", "<c-w>l", { noremap = true, silent = true })
keymap.set("n", "<leader>h", ":bn<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>l", ":bp<CR>", { noremap = true, silent = true })

--Resize split windows
keymap.set("n", "<c-up>", "<c-w>+", { noremap = true, silent = true })
keymap.set("n", "<c-down>", "<c-w>-", { noremap = true, silent = true })
keymap.set("n", "<c-left>", "<c-w>>", { noremap = true, silent = true })
keymap.set("n", "<c-right>", "<c-w><", { noremap = true, silent = true })

--Buffers and Terminal Mode
keymap.set("n", "<C-\\>", ":bd<CR>", { noremap = true, silent = true })
keymap.set("t", "<C-h>", "<C-\\><C-n>", { noremap = true, silent = true })
