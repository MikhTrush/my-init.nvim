return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { 'lua', 'rust', 'c', 'c_sharp', 'python', 'markdown', 'javascript', 'zig' },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
