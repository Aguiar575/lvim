lvim.builtin.treesitter.ensure_installed = {
  "python",
  "cpp"
}

-- I'm setting this because I have connflict with the parser 
-- on my nvim
lvim.builtin.treesitter.ignore_install = {
  "rust"
}

lvim.builtin.treesitter.rainbow = {
  enable = true,
  query = {
    "rainbow-parens",
  },
  strategy = require("ts-rainbow").strategy.global,
  hlgroups = {
    "TSRainbowBlue",
    "TSRainbowPink",
    "TSRainbowYellow",
  },
}

lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.auto_install = false
