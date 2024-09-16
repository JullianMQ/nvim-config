return {
  "folke/flash.nvim",
  event = "VeryLazy",
    incremental = true,
  -- -@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    {"<leader>fm", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash"},
    { "<leader>ft", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    {"<leader><leader>f", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    -- { "<leader>r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "<leader>R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "TreesitterSearch" },
  },
}
