-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

lspconfig.clangd.setup {}
lspconfig.lua_ls.setup {}
lspconfig.bashls.setup {}
lspconfig.cmake.setup {}
lspconfig.autotools_ls.setup {}
lspconfig.markdown_oxide.setup {}
lspconfig.cssls.setup {}
lspconfig.asm_lsp.setup {}
lspconfig.texlab.setup {}
lspconfig.pyright.setup {}
lspconfig.taplo.setup {}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
