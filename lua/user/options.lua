local o = vim.o

--[[ Line numbering ]] --
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.o.clipboard = 'unnamedplus'
-- end)

--[[ Search settings ]] --
vim.o.ignorecase = true
vim.o.smartcase = true      -- Considers case, if search text has Uppercase
vim.o.showmatch = true      -- Shows results

--[[ Tab settings ]]    --
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
-- vim.o.expandtab = false

--[[ Split ]] --
vim.o.splitright = true
vim.o.splitbelow = true

--[[ Files ]] --
vim.o.completeopt = 'menuone,noselect'

--[[ Appearance settings ]] --
-- Highlight the line where the cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 5

-- Show <tab> and trailing spaces
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s) See `:help 'confirm'`
vim.o.confirm = true


-- Don't know what these do
-- Enable break indent
vim.o.breakindent = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true