return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup({})
        -- REQUIRED

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end, { desc = "Harpoon Add" })
        vim.keymap.set("n", "<leader>e", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Harpoon Window" })
        vim.keymap.set("n", "<A-1>", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<A-2>", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<A-3>", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<A-4>", function()
            harpoon:list():select(4)
        end)
        vim.keymap.set("n", "<A-5>", function()
            harpoon:list():select(5)
        end)
    end,
}
