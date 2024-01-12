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
