lvim.plugins = {
  "github/copilot.vim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest-python",
  "nvim-neotest/neotest",
  "nvim-neotest/nvim-nio",
  {
    "mrcjkb/rustaceanvim",
    init = function()
      require("user.rust_tools").config()
    end,
    ft = { "rust", "rs" },
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("user.crates").config()
    end,
  },
}
