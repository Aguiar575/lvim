local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "rustfmt" } }

local opts = {
  mode = "n",     -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}

local mappings = {
  C = {
    name = "Rust",
    r = { "<cmd>RustLsp runnables<Cr>", "Runnables" },
    t = { "<cmd>RustLsp Testables<Cr>", "Testables" },
    m = { "<cmd>RustLsp renderDiagnostic<Cr>", "Diagnostics" },
    c = { "<cmd>RustLsp openCargo<Cr>", "Open Cargo" },
    p = { "<cmd>RustLsp parentModule<Cr>", "Parent Module" },
    d = { "<cmd>RustDebuggables<Cr>", "Debuggables" },
    v = { "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
    R = {
      "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
      "Reload Workspace",
    },
    o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
  },
}

which_key.register(mappings, opts)
