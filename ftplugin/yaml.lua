vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "yamlls" })
require("lvim.lsp.manager").setup("yamlls", {})
