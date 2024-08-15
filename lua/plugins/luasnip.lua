return {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local ls = require("luasnip")
        vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-H>", function() ls.jump(-1) end, { silent = true })

        vim.keymap.set({ "i", "s" }, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, { silent = true })
        ls.filetype_extend("html", { "javascript", "php", "ejs" })
        ls.filetype_extend("tailwindcss", { "javascript", "php" })
        ls.filetype_extend("javascript", {"html", "ejs"})
        ls.filetype_extend("php", {"html"})
    end,
}
