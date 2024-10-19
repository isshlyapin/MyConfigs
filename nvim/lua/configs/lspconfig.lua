-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

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
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
