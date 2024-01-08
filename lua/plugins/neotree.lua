return
{
    --TODO: Install NERDFONT
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
        -- NEOTREE KEYMAPS
        vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>', {noremap = true, silent = true})
    end
}