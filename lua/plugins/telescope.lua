return
{
        {
            'nvim-telescope/telescope.nvim', tag = '0.1.5',
            dependencies = { 'nvim-lua/plenary.nvim' },
            extensions = {
                recent_files = { }
            },
            -- Telescope stuff
            config = function()
                local builtin = require('telescope.builtin')
                vim.keymap.set('n', '<leader>ff', builtin.find_files, {noremap = true, silent = true})
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, {noremap = true, silent = true})
                vim.keymap.set('n', '<leader>fb', builtin.buffers, {noremap = true, silent = true})
                vim.keymap.set('n', '<leader>fh', builtin.help_tags, {noremap = true, silent = true})
                vim.keymap.set('n', '<leader>fr', [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]], {noremap = true, silent = true})
            end
        },
        {
            'nvim-telescope/telescope-ui-select.nvim',
            config = function()
            require("telescope").setup
            {
                extensions =
                {
                    ["ui-select"] =
                    {
                        require("telescope.themes").get_dropdown { }
                    }
                }
            }
                require("telescope").load_extension("ui-select")
            end
        },
        {
            'smartpde/telescope-recent-files',
            config = function ()
                require("telescope").load_extension("recent_files")
            end
        }
}
