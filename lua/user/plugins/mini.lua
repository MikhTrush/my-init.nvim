return {
    {
        'echasnovski/mini.pairs',
        opts = {
		},
        config = function(_, opts)
            require('mini.pairs').setup(opts)
        end,
		event = 'InsertEnter',
    },
}
