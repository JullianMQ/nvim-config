local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
keymap.set('n', '<leader>vs', ':vsplit<CR>', { noremap = true, silent = true, desc = 'Vertical split' })
keymap.set('n', '<leader>ss', ':split<CR>', { noremap = true, silent = true, desc = 'Horizontal split' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Keymaps from previous configuration
-- Overwrite default motions
keymap.set('v', 'p', '"_dp', { noremap = true, silent = true, desc = 'Paste without yank' })
keymap.set('v', 'P', '"_dP', { noremap = true, silent = true, desc = 'Paste without yank' })
keymap.set('x', 'p', '"_dp', { noremap = true, silent = true, desc = 'Paste without yank' })
keymap.set('x', 'P', '"_dP', { noremap = true, silent = true, desc = 'Paste without yank' })

keymap.set('n', 'c', '"_c', { noremap = true, silent = true, desc = 'Change without yank' })
keymap.set('n', 'C', '"_C', { noremap = true, silent = true, desc = 'Change without yank' })
keymap.set('n', 's', '"_s', { noremap = true, silent = true, desc = 'Substitute without yank' })
keymap.set('n', 'S', '"_S', { noremap = true, silent = true, desc = 'Substitute without yank' })
keymap.set('n', 'db', 'ldb', { noremap = true, silent = true, desc = 'Delete backwards including cursor' })
keymap.set('n', 'yb', 'lyb', { noremap = true, silent = true, desc = 'Yank backwards including cursor' })
keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc = 'Scroll up center' })
keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc = 'Scroll down center' })

-- QOL
keymap.set('n', 'yae', ':% y<CR>', { noremap = true, silent = true, desc = 'Yank all' })
keymap.set('n', '<leader>yae', ':% y+"<CR>', { noremap = true, silent = true, desc = 'Yank all' })
-- keymap.set('n', '<leader>so', ':source ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true, desc = 'Source main config file' })
keymap.set('n', '<leader>so', ':source<CR>', { noremap = true, silent = true, desc = 'Source config file' })
-- keymap.set('n', '-', ':Ex<CR>', { noremap = true, silent = true, desc = 'Open file explorer' })

-- Escape insert mode
keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })
keymap.set('i', 'jk', '<ESC>', { noremap = true, silent = true })

-- Escape visual mode
keymap.set('v', 'q', '<ESC>', { noremap = true, silent = true })

-- QuickFix List
keymap.set('n', '<leader>sj', ':cnext<CR>', { noremap = true, silent = true, desc = 'QuickFix Previous' })
keymap.set('n', '<leader>sk', ':cnext<CR>', { noremap = true, silent = true, desc = 'QuickFix Next' })
keymap.set('n', '<leader>sd', ':cclose<CR>', { noremap = true, silent = true, desc = 'QuickFix Delete' })

-- Save file
keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true, desc = 'Save file' })
keymap.set('n', '<leader><leader>w', ':wqa<CR>', { noremap = true, silent = true, desc = 'Save all file and quit' })
keymap.set('n', '<leader><leader>q', ':qa!<CR>', { noremap = true, silent = true, desc = 'Quit without saving' })

-- Keymaps save folds
keymap.set('n', '<leader>sf', ':mkview<CR>', { noremap = true, silent = true, desc = 'Save folds' })
keymap.set('n', '<leader>lf', ':loadview<CR>', { noremap = true, silent = true, desc = 'Load folds' })

-- Go back to last cursor position
keymap.set('n', '<leader>\\', '``', { noremap = true, silent = true, desc = 'Back to last mark' })

-- Center cursor when moving to the next word when searching
keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })
keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })

-- Buffer deletion, added the bp bar for it not to affect the window splits
-- buffer delete window
keymap.set('n', '<leader>bds', ':bp|bd #<CR>', { noremap = true, silent = true, desc = '[B]uffer [D]elete [S]afe' })
-- buffer [D]elete safe
keymap.set('n', '<leader>bdf', ':bp|bd! #<CR>', { noremap = true, silent = true, desc = '[B]uffer [D]elete [F]orce' })
-- buffer [D]elete force
keymap.set('n', '<leader>bda', ':bp|%bd<CR>', { noremap = true, silent = true, desc = '[B]uffer [D]elete [A]ll' })
-- [D]elete all buffers
-- keymap.set("n", "<leader>bde", ":bp|%bd|e #|bd #<CR>", { noremap = true, silent = true, desc="[B]uffer [D]elete all except current" })
keymap.set('n', '<leader>bde', ':%bd|e #|bd #<CR>', { noremap = true, silent = true, desc = '[B]uffer [D]elete all [E]xcept current' })
-- delete all buffers except current

keymap.set('n', '<leader>o', 'o<ESC>', { noremap = true, silent = true, desc = 'Add line below' })
keymap.set('n', '<leader>O', 'O<ESC>', { noremap = true, silent = true, desc = 'Add line above' })

-- Navigate buffers
keymap.set('n', '<leader>h', ':bn<CR>', { noremap = true, silent = true, desc = 'Go to next buffer' })
keymap.set('n', '<leader>l', ':bp<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer' })

-- Resize split windows
keymap.set('n', '<c-up>', '<c-w>7+', { noremap = true, silent = true })
keymap.set('n', '<c-down>', '<c-w>7-', { noremap = true, silent = true })
keymap.set('n', '<c-left>', '<c-w>7>', { noremap = true, silent = true })
keymap.set('n', '<c-right>', '<c-w>7<', { noremap = true, silent = true })

-- LSP
keymap.set('n', '[o', vim.diagnostic.open_float, { desc = ' open floating diagnostic' })
keymap.set('n', ']o', vim.diagnostic.open_float, { desc = ' open floating diagnostic' })
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = ' go to previous diagnostic' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = ' go to next diagnostic' })
keymap.set('n', 'gd', ':vs<CR><C-w>l<C-]>', { desc = 'open documentation on right split' })
keymap.set('n', '<C-]>', ':vs<CR><C-w>l<C-]>', { desc = 'open documentation on right split' })

-- Git Fugitive Stuff
keymap.set('n', '<leader>gp', ':Git push ', { desc = '[G]it push' })
keymap.set('n', '<leader>gl', ':Git pull ', { desc = '[G]it pull' })

keymap.set('n', '<leader>gm', ':Git commit -m ""', { desc = '[G]it commit' })
keymap.set('n', '<leader>ga', ':Git add ', { desc = ' [G]it add' })
keymap.set('n', '<leader>gd', ':Git diff ', { desc = ' [G]it diff' })
keymap.set('n', '<leader>gv', ':Gvdiffsplit!<CR>', { desc = ' [G]it diff vertical split three way' })

-- Screenkey
-- keymap.set('n', '<leader>tsk', ':Screenkey<CR>', { desc = '[T]oggle [S]creen[K]ey' })

-- UndoTree
keymap.set('n', 'gu', ':UndotreeToggle<CR>', { desc = 'Show Undotree' })

-- Bufferlist
-- keymap.set('n', '<leader>e', ':BufferList<CR>', { desc = 'Show Bufferlist' })

-- Vim Tmux Keybinds
-- keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>', { silent = true, desc = 'window left' })
-- keymap.set('n', '<C-j>', ':TmuxNavigateDown<cr>', { silent = true, desc = 'window right' })
-- keymap.set('n', '<C-k>', ':TmuxNavigateUp<cr>', { silent = true, desc = 'window down' })
-- keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>', { silent = true, desc = 'window up' })
-- keymap.set('n', '<C-\\>', ':TmuxNavigatePrevious<cr>', { silent = true, desc = 'previous window' })
