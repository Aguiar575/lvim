local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "clang_format" } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "clang_format",  filetypes = { "cpp" } } }
