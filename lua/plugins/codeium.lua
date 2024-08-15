return {
    "Exafunction/codeium.nvim",
    events = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({})
    end
}
