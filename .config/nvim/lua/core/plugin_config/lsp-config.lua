-- Setup language servers.
local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.lua_ls.setup {}
lspconfig.pyright.setup {}
lspconfig.jdtls.setup {}
lspconfig.julials.setup {}
lspconfig.jsonls.setup {}
lspconfig.yamlls.setup {}
lspconfig.cssls.setup {}
lspconfig.html.setup {}
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
