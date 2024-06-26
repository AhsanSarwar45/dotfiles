local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "svelte", "tailwindcss", "kotlin_language_server",
  "java_language_server" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- require("flutter-tools").setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

-- lspconfig.dartls.setup {
--   cmd = { "dart", "language-server", "--protocol=lsp" },
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
--
-- lspconfig.pyright.setup { blabla}
