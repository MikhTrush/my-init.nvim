vim.lsp.config('omnisharp', {
  -- Example custom settings: Add specific launch options.
  settings = {
    RoslynExtensionsOptions = {
      enableAnalyzersSupport = true,
    },
  },

  on_attach = function(client, bufnr)
    -- Your on_attach function for setting up keymaps, etc.
    -- See :help omnisharp.txt for more options and setup details.
  end,
})
