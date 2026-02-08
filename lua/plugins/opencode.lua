return {
    "NickvanDyke/opencode.nvim",
    dependencies = {
        -- Recommended for `ask()` and `select()`.
        -- Required for `snacks` provider.
        ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
        { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = { keys = { "<c-/>", false } } } },
    },
    config = function()
        ---@type opencode.Opts
        vim.g.opencode_opts = {
            -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
        }

        -- Required for `opts.events.reload`.
        vim.o.autoread = true

        -- Recommended/example keymaps.
        vim.keymap.set({ "n", "x" }, "<leader>oa", function()
            require("opencode").ask("@this: ", { submit = true })
        end, { desc = "[O]pencode [A]sk" })
        vim.keymap.set({ "n", "x" }, "<leader>os", function()
            require("opencode").select()
        end, { desc = "[O]pencode [S]elect" })
        vim.keymap.set({ "n", "x" }, "<leader>op", function()
            require("opencode").prompt("@this")
        end, { desc = "[O]pencode [P]rompt" })
        vim.keymap.set({ "n", "t" }, "<leader>ot", function()
            require("opencode").toggle()
        end, { desc = "[O]pencode [T]oggle" })
        vim.keymap.set("n", "<S-C-u>", function()
            require("opencode").command("session.half.page.up")
        end, { desc = "opencode half page up" })
        vim.keymap.set("n", "<S-C-d>", function()
            require("opencode").command("session.half.page.down")
        end, { desc = "opencode half page down" })
        -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
        -- vim.keymap.set("n", "+", "<C-a>", { desc = "Increment", noremap = true })
        -- vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
    end,
}
