return {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter" },
    branch = "v0.6", --recommended as each new version will have breaking changes
    opts = {},
    config = function()
        require('ultimate-autopair').setup({
            cmap = false,
            extensions={cond={cond=function(fn) return not fn.in_macro() end}}
        })
    end
}
