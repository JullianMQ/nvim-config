return {

    {
        'echasnovski/mini.ai', version = '*',
        lazy = true,
        event = 'VeryLazy',
        config = function()
            -- Add the different setups for mini plugins here
            require('mini.ai').setup({})
            require('mini.splitjoin').setup({})
        end
    },
    { 'echasnovski/mini.splitjoin', version = '*', }

}
