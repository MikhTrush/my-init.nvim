-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true


-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    lazyrepo,
    lazypath
  }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
vim.opt.rtp:prepend(lazypath)

if vim.g.vscode then
  -- VSCode Neovim
  require("user.options")
  require("user.keymaps")
  require("user.autocmds")
  require("user.usercmds")
  require("user.packages")
  require("user.utils")
else
  require('lazy').setup({
      { import = "user.plugins" },
    },
    {
      change_detection = { enabled = false },
    })


  require("user.options")
  require("user.keymaps")
  require("user.autocmds")
  require("user.usercmds")
  require("user.packages")
  require("user.utils")
  require("user.treesittercmds")


  require("user.theme")
end
