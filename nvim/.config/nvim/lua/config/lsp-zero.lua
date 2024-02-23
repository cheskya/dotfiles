local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr}

  vim.keymap.set({'n', 'x'}, 'gq', function()
    vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end, opts)
end)

-- here you can setup the language servers
-- but i won't do that because i'm using Mason

require("mason").setup()
require('mason-lspconfig').setup({
  ensure_installed = {'eslint', 'lua_ls', 'cssls', 'html', 'jdtls'},
  handlers = {
    lsp_zero.default_setup,
  },
})
