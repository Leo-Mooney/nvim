return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local nvim_tree = require("nvim-tree")
    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1
    nvim_tree.setup({
      actions = {
        open_file = {
          window_picker = {
            enable = true,
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
  end
}
