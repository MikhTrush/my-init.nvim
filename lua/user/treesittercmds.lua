-- Включение Treesitter-подсветки
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'c', 'rust', 'python', 'c_sharp', 'markdown' },
  callback = function()
    vim.treesitter.start()
  end,
})

-- Включение Treesitter-фолдов
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'c', 'rust', 'python', 'c_sharp', 'markdown' },
  callback = function()
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  end,
})

-- Включение экспериментального Treesitter-indent
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'c', 'rust', 'python', 'c_sharp', 'markdown' },
  callback = function()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
