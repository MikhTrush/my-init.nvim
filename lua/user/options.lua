local opt = vim.opt

--[[ Line numbering ]]--
opt.number = true
opt.relativenumber = true

--[[ Search settings ]]--
opt.ignorecase = true
opt.smartcase = true -- Considers case, if search text has Uppercase
opt.showmatch = true -- Shows results

--[[ Tab settings ]]--
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
-- opt.expandtab = false

--[[ Split ]]--
opt.splitright = true
opt.splitbelow = true

--[[ Space as <Leader> ]]--
vim.g.mapleader = ' '

--[[ Files ]]--
opt.completeopt = 'menuone,noselect'

--[[ Appearance settings ]]--
-- Highlight the line where the cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5

-- Show <tab> and trailing spaces
opt.list = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
opt.confirm = true
