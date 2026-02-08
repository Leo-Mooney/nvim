return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
      },
    },
    panel = {
      enabled = false,
    },
  },
  config = function(_, opts)
    require("copilot").setup(opts)

    vim.keymap.set("i", "<Right>", function()
      local suggestion = require("copilot.suggestion")
      if suggestion.is_visible() then
        suggestion.accept()
        return ""
      end
      return "<Right>"
    end, {
      expr = true,
      replace_keycodes = false,
      silent = true,
    })
  end,
}
