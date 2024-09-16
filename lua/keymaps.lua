local keymap = vim.keymap

-- Overwrite default motions
keymap.set("v", "p", "\"_dp", { noremap = true, silent = true, desc = "Paste without yank" })
keymap.set("v", "P", "\"_dP", { noremap = true, silent = true, desc = "Paste without yank" })
keymap.set("x", "p", "\"_dp", { noremap = true, silent = true, desc = "Paste without yank" })
keymap.set("x", "P", "\"_dP", { noremap = true, silent = true, desc = "Paste without yank" })

keymap.set("n", "c", "\"_c", { noremap = true, silent = true, desc = "Change without yank" })
keymap.set("n", "C", "\"_C", { noremap = true, silent = true, desc = "Change without yank" })
keymap.set("n", "s", "\"_s", { noremap = true, silent = true, desc = "Substitute without yank" })
keymap.set("n", "S", "\"_S", { noremap = true, silent = true, desc = "Substitute without yank" })
keymap.set("n", "db", "ldb", { noremap = true, silent = true, desc = "Delete backwards including cursor" })
keymap.set("n", "yb", "lyb", { noremap = true, silent = true, desc = "Yank backwards including cursor" })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll up center" })
keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down center" })
keymap.set("n", "<BS>", "^", { noremap = true, silent = true, desc = "First non-blank character" })

-- QOL
keymap.set("n", "<leader>gl", "g_", { noremap = true, silent = true, desc = "Go to end of line" })
keymap.set("n", "<leader>sl", "vg_", { noremap = true, silent = true, desc = "Select to end of line" })
keymap.set("n", "<leader>sa", "ggVG", { noremap = true, silent = true, desc = "Select all" })
keymap.set("n", "yae", ":% y\"+<CR>:% y<CR>", { noremap = true, silent = true, desc = "Yank all" })
keymap.set("n", "<leader>Cr", ":!node %<CR>", { noremap = true, silent = true, desc = "Code Run Node" })

-- Yank to system clipboard
keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })
keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank to clipboard" })
keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Clipboard paste front" })
keymap.set("v", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Clipboard paste front" })
keymap.set("n", "<leader>P", '"+P', { noremap = true, silent = true, desc = "Clipboard paste back" })
keymap.set("v", "<leader>P", '"+P', { noremap = true, silent = true, desc = "Clipboard paste back" })

-- Got this from dycw/dotfiles
-- global marks
-- Not working yet
-- local prefixes = "m'"
-- local letters = "abcdefghijklmnopqrstuvwxyz"
-- for i = 1, #prefixes do
--     local prefix = prefixes:sub(i, i)
--     for j = 1, #letters do
--         local lower_letter = letters:sub(j, j)
--         local upper_letter = string.upper(lower_letter)
--         keymap.set({ "n", "v" }, prefix .. lower_letter, prefix .. upper_letter, "Mark " .. upper_letter)
--     end
-- end

-- Save file
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })
keymap.set("n", "<leader><leader>w", ":wqa<CR>", { noremap = true, silent = true, desc = "Save all file and quit" })
keymap.set("n", "<leader><leader>q", ":q!<CR>", { noremap = true, silent = true, desc = "Quit without saving" })

-- Keymaps save folds
keymap.set("n", "<leader>sf", ":mkview<CR>", { noremap = true, silent = true, desc = "Save folds" })
keymap.set("n", "<leader>lf", ":loadview<CR>", { noremap = true, silent = true, desc = "Load folds" })

-- Go back to last cursor position
keymap.set("n", "<leader>\\", "``", { noremap = true, silent = true, desc = "Back to last mark" })

-- Buffer deletion, added the bp bar for it not to affect the window splits
keymap.set("n", "<leader>bds", ":bp|bd #<CR>", { noremap = true, silent = true, desc = "Buffer delete safe" })
-- buffer delete safe
keymap.set("n", "<leader>bdf", ":bp|bd! #<CR>", { noremap = true, silent = true, desc = "Buffer delete force" })
-- buffer delete force
keymap.set("n", "<leader>bda", ":bp|%bd<CR>", { noremap = true, silent = true, desc = "Buffer delete all" })
-- delete all buffers
-- keymap.set("n", "<leader>bde", ":bp|%bd|e #|bd #<CR>", { noremap = true, silent = true, desc="Buffer delete all except current" })
keymap.set("n", "<leader>bde", ":%bd|e #|bd #<CR>",
    { noremap = true, silent = true, desc = "Buffer delete all except current" })
-- delete all buffers except current

-- Escape insert mode
keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })


-- Escape visual mode
keymap.set("v", "q", "<ESC>", { noremap = true, silent = true })

-- Create space and below and go up
keymap.set("n", "2o", "o<ESC>o", { noremap = true, silent = true })
keymap.set("n", "2O", "O<ESC>O", { noremap = true, silent = true })
keymap.set("n", "<leader>o", "o<ESC>", { noremap = true, silent = true })
keymap.set("n", "<leader><leader>o", "O<ESC>", { noremap = true, silent = true })

-- Center cursor when moving to the next word when searching
keymap.set("n", "n", "nzz", { noremap = true, silent = true })
keymap.set("n", "N", "Nzz", { noremap = true, silent = true })


-- Navigate split view better
keymap.set("n", "<c-j>", "<c-w>j", { noremap = true, silent = true })
keymap.set("n", "<c-k>", "<c-w>k", { noremap = true, silent = true })
keymap.set("n", "<c-h>", "<c-w>h", { noremap = true, silent = true })
keymap.set("n", "<c-l>", "<c-w>l", { noremap = true, silent = true })
keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical split" })
keymap.set("n", "<leader>ss", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal split" })

-- Navigate buffers
keymap.set("n", "<leader>h", ":bn<CR>", { noremap = true, silent = true, desc = "Go to next buffer" })
keymap.set("n", "<leader>l", ":bp<CR>", { noremap = true, silent = true, desc = "Go to previous buffer" })

-- Resize split windows
keymap.set("n", "<c-up>", "<c-w>7+", { noremap = true, silent = true })
keymap.set("n", "<c-down>", "<c-w>7-", { noremap = true, silent = true })
keymap.set("n", "<c-left>", "<c-w>7>", { noremap = true, silent = true })
keymap.set("n", "<c-right>", "<c-w>7<", { noremap = true, silent = true })

-- Buffers and Terminal Mode
keymap.set("t", "<C-\\>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal insert mode" })
keymap.set("n", "<leader>tv", ":vsp term://bash<CR>", { noremap = true, silent = true, desc = "Vertical terminal" })
keymap.set("n", "<leader>ts", ":sp term://bash<CR>", { noremap = true, silent = true, desc = "Horizontal terminal" })

-- Get out of terminal insert mode

-- LSP
keymap.set("n", "[o", vim.diagnostic.open_float, { desc = " open floating diagnostic" })
keymap.set("n", "]o", vim.diagnostic.open_float, { desc = " open floating diagnostic" })
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = " go to previous diagnostic" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = " go to next diagnostic" })
keymap.set("n", "gd", ":vs<CR><C-w>l<C-]>", { desc = "open documentation on right split" })
keymap.set("n", "<C-]>", ":vs<CR><C-w>l<C-]>", { desc = "open documentation on right split" })

-- Git Fugitive Stuff
vim.keymap.set("n", "gpu", ":Git push ", { desc = "Git push" })
vim.keymap.set("n", "gpl", ":Git pull ", { desc = "Git pull" })

vim.keymap.set("n", "gcm", ":Git commit -m \"\"", { desc = "Git commit" })
vim.keymap.set("n", "gaf", ":Git add ", { desc = " Git add" })
vim.keymap.set("n", "gdf", ":Git diff ", { desc = " Git diff" })
vim.keymap.set("n", "gdv", ":Gvdiffsplit!<CR>", { desc = " Git diff vertical split three way" })

-- Screenkey
keymap.set("n", "<leader>tsk", ":Screenkey<CR>", { desc = "[T]oggle [S]creen[K]ey" })


-- UndoTree
keymap.set("n", "gu", ":UndotreeToggle<CR>", { desc = "show undotree" })

-- Vim Tmux Keybinds
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
