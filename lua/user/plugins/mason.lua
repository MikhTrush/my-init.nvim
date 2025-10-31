return {
    {
        'williamboman/mason.nvim',
        cmd = 'Mason',
        keys = {
            { '<leader>cm', '<cmd>Mason<cr>', desc = 'Open Mason' },
        },
        config = function()
            require("mason").setup({
                registries = {
                    "github:mason-org/mason-registry",
                    "github:Crashdummyy/mason-registry",
                },
            })
        end,

    },
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
