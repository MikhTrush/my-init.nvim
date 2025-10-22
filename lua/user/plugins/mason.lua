return {
    {
        'williamboman/mason.nvim',
        cmd = 'Mason',
        keys = {
            { '<leader>cm', '<cmd>Mason<cr>', desc = 'Open Mason' },
        },
        config = true,
    },
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
