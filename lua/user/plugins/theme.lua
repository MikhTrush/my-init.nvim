return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'Mofiqul/vscode.nvim',
        config = function()
            vim.o.termguicolors = true
            vim.cmd [[colorscheme vscode]]
            -- Можно выбрать variant:
            vim.g.vscode_style = "dark"     -- "light" или "dark"
        end,
    }
}
