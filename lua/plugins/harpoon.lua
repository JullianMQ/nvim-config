return {
    -- "ThePrimeagen/harpoon",
    -- branch = "harpoon2",
    -- dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function ()
    --     local harpoon = require("harpoon")
    --     harpoon:setup()

    --     vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    --     vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    --     vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
    --     vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
    --     vim.keymap.set("n", "<C-s>", function() harpoon:list():select(3) end)
    --     vim.keymap.set("n", "<C-n>", function() harpoon:list():select(4) end)

    -- end
    {
        "cbochs/grapple.nvim",
        opts = {
            scope = "git", -- also try out "git_branch"
            icons = true, -- setting to "true" requires "nvim-web-devicons"
            status = false,
        },
        keys = {
            { "<leader>a", "<cmd>Grapple toggle<cr>",          desc = "Tag a file" },
            { "<leader>e", "<cmd>Grapple toggle_tags<cr>",     desc = "Toggle tags menu" },

            { "<C-m>",     "<cmd>Grapple select index=1<cr>",  desc = "Select first tag" },
            { "<C-t>",     "<cmd>Grapple select index=2<cr>",  desc = "Select second tag" },
            { "<C-s>",     "<cmd>Grapple select index=3<cr>",  desc = "Select third tag" },
            { "<C-n>",     "<cmd>Grapple select index=4<cr>",  desc = "Select fourth tag" },

            -- { "<C-n>",     "<cmd>Grapple cycle_tags next<cr>", desc = "Go to next tag" },
            -- { "<C-p>",     "<cmd>Grapple cycle_tags prev<cr>", desc = "Go to previous tag" },
        },
    },
}
