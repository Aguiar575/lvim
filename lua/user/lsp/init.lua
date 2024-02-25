reload "user.lsp.languages.cpp"
reload "user.lsp.languages.rust"

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua",   filetypes = { "lua" } },
  { command = "shfmt",    filetypes = { "sh", "zsh" } },
  { command = "prettier", filetypes = { "css", "javascript", "javascriptreact", "typescript", "typescriptreact" } },
}

lvim.builtin.dap.active = true
