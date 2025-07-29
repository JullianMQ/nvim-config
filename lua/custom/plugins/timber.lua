return {
    "Goose97/timber.nvim",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("timber").setup({
            default_keymaps_enabled = false,
            keymaps = {
                insert_log_below = "<leader>glj",
                insert_log_above = "<leader>glk",
                insert_batch_log = "<leader>glb",
                insert_log_targets_to_batch = "<leader>gla",
            }
        })
    end
}
