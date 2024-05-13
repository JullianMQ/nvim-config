local keymap = vim.keymap

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

-- Keymaps save file
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
-- Keymaps save folds
keymap.set("n", "<leader>sf", ":mkview<CR>", { noremap = true, silent = true, desc="Save folds" })
keymap.set("n", "<leader>lf", ":loadview<CR>", { noremap = true, silent = true, desc="Load folds" })

-- Go back to last cursor position
keymap.set("n", "<leader>\\", "``", { noremap = true, silent = true })

-- Buffer deletion, added the bp bar for it not to affect the window splits
keymap.set("n", "<leader>bds", ":bp|bd #<CR>", { noremap = true, silent = true, desc="Buffer delete safe" })
-- buffer delete safe
keymap.set("n", "<leader>bdf", ":bp|bd! #<CR>", { noremap = true, silent = true, desc="Buffer delete force" })
-- buffer delete force
keymap.set("n", "<leader>bda", ":bp|%bd<CR>", { noremap = true, silent = true, desc="Buffer delete all" })
-- delete all buffers
keymap.set("n", "<leader>bde", ":bp|%bd|e #|bd #<CR>", { noremap = true, silent = true, desc="Buffer delete all except current" })
-- delete all buffers except current

-- Fast tags for
keymap.set("i", "<?p", "<?php?><ESC>hi", { noremap = true, silent = true })
keymap.set("i", "<?=", "<?=?><ESC>hi", { noremap = true, silent = true })

-- Tags for html
-- keymap.set("i", "<link", '<link rel="stylesheet" href=""><ESC>hi', { noremap = true, silent = true })
-- keymap.set("i", "<meta", '<meta name="description" content=""><ESC>hi', { noremap = true, silent = true })

-- keymap.set("i", "<h1", "<h1></h1><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h1.", '<h1 class=""></h1><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h1#", '<h1 id=""></h1><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<h2", "<h2></h2><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h2.", '<h2 class=""></h2><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h2#", '<h2 id=""></h2><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<h3", "<h3></h3><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h3.", '<h3 class=""></h3><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h3#", '<h3 id=""></h3><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<h4", "<h4></h4><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h4.", '<h4 class=""></h4><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h4#", '<h4 id=""></h4><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<h5", "<h5></h5><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h5.", '<h5 class=""></h5><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h5#", '<h5 id=""></h5><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<h6", "<h6></h6><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<h6.", '<h6 class=""></h6><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<h6#", '<h6 id=""></h6><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<div", "<div></div><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<div.", '<div class=""></div><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<div#", '<div id=""></div><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<sect", "<section></section><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<sect.", '<section class=""></section><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<sect#", '<section id=""></section><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<asi", "<aside></aside><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<asi.", '<aside class=""></aside><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<asi#", '<aside id=""></aside><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<atag", '<a href="" alt=""></a><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<ablank", '<a href="" alt="" target="_blank"></a><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<atag.", '<a href="" alt="" class=""></a><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<atag#", '<a href="" alt="" id=""></a><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<p", "<p></p><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<p.", '<p class=""></p><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<p#", '<p id=""></p><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<formpost", '<form action="" method="post"></form><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<formget", '<form action="" method="get"></form><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<butn", "<button></button><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<but.", '<button class=""></button><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<but#", '<button id=""></button><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<inp", '<input type="" name=""></input><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<nav", "<nav></nav><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<nav.", '<nav class=""></nav><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<nav#", '<nav id=""></nav><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<li", "<li></li><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<li.", '<li class=""></li><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<li#", '<li id=""></li><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<ul", "<ul></ul><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<ul.", '<ul class=""></ul><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<ul#", '<ul id=""></ul><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<ol", "<ol></ol><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<ol.", '<ol class=""></ol><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<ol#", '<ol id=""></ol><ESC>cit', { noremap = true, silent = true })

-- keymap.set("i", "<footer", "<footer></footer><ESC>cit", { noremap = true, silent = true })
-- keymap.set("i", "<footer.", '<footer class=""></footer><ESC>cit', { noremap = true, silent = true })
-- keymap.set("i", "<footer#", '<footer id=""></footer><ESC>cit', { noremap = true, silent = true })

-- Escape insert mode
keymap.set("i", "qq", "<ESC>", { noremap = true, silent = true })
keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })

-- Escape visual mode
keymap.set("v", "q", "<ESC>", { noremap = true, silent = true })

-- Create space and below and go up
keymap.set("n", "2o", "o<ESC>o", { noremap = true, silent = true })
keymap.set("n", "2O", "O<ESC>O", { noremap = true, silent = true })

-- Center cursor when moving to the next word when searching
keymap.set("n", "n", "nzz", { noremap = true, silent = true })
keymap.set("n", "N", "Nzz", { noremap = true, silent = true })

-- Yank to system clipboard
keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
keymap.set("n", "P", '"+p', { noremap = true, silent = true })
keymap.set("v", "P", '"+p', { noremap = true, silent = true })

-- paste without yanking the overwritten text
keymap.set("x", "<leader>p", '"_dP', { noremap = true, silent = true })

-- Navigate split view better
keymap.set("n", "<c-j>", "<c-w>j", { noremap = true, silent = true })
keymap.set("n", "<c-k>", "<c-w>k", { noremap = true, silent = true })
keymap.set("n", "<c-h>", "<c-w>h", { noremap = true, silent = true })
keymap.set("n", "<c-l>", "<c-w>l", { noremap = true, silent = true })
keymap.set("n", "<leader>h", ":bn<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>l", ":bp<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true, desc="Vertical split"})
keymap.set("n", "<leader>ss", ":split<CR>", { noremap = true, silent = true, desc="Horizontal split"})

-- Resize split windows
keymap.set("n", "<c-up>", "<c-w>+", { noremap = true, silent = true })
keymap.set("n", "<c-down>", "<c-w>-", { noremap = true, silent = true })
keymap.set("n", "<c-left>", "<c-w>>", { noremap = true, silent = true })
keymap.set("n", "<c-right>", "<c-w><", { noremap = true, silent = true })

-- Buffers and Terminal Mode
keymap.set("t", "<C-h>", "<C-\\><C-n>", { noremap = true, silent = true })
-- Get out of terminal insert mode

-- LSP
vim.keymap.set("n", "[o", vim.diagnostic.open_float, {})
vim.keymap.set("n", "]o", vim.diagnostic.open_float, {})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})

-- Git Fugitive Stuff
vim.keymap.set("n", "gpu", ":Git push ", {desc="Git push"})
vim.keymap.set("n", "gpl", ":Git pull ", {desc="Git pull"})
vim.keymap.set("n", "gcm", ":Git commit -m \"\"", {desc="Git commit"})
vim.keymap.set("n", "gaf", ":Git add ", {desc="Git add"})
vim.keymap.set("n", "gdf", ":Git diff ", {desc="Git diff"})
vim.keymap.set("n", "gdv", ":Gvdiffsplit!<CR>", {desc="Git diff vertical split three way"})

-- UndoTree
vim.keymap.set("n", "gu", ":UndotreeToggle<CR>", {})
