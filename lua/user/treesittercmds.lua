-- lua/user/treesittercmds.lua
-- Enable Treesitter folding
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "c", "rust", "python", "c_sharp", "markdown" },
	callback = function()
		vim.wo.foldmethod = "expr"
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.wo.foldenable = false
	end,
})
-- Enable Treesitter indentation (built-in)
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = { "lua", "c", "rust", "python", "c_sharp", "markdown" },
-- 	callback = function()
-- 		vim.bo.indentexpr = "v:lua.vim.treesitter.indent()"
-- 	end,
-- })

-- NOTE: vim.treesitter.start() is REMOVED.
-- Neovim 0.9+ automatically starts Treesitter when a supported filetype opens.
-- Manual calls cause race conditions and the exact error you saw.
