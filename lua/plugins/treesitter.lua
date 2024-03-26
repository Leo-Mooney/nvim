return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
    -- enable syntax highlighting
    highlight = {
      enable = true,
    },
    -- enable indentation
    indent = { enable = true },
    -- enable autotagging (w/ nvim-ts-autotag plugin)
    autotag = { enable = true },
    -- ensure these language parsers are installed
    ensure_installed = {
      "python",
      "json",
      "markdown",
      "lua",
      "dockerfile",
    },
    -- auto install above language parsers
    auto_install = true,
  })
  end
}
