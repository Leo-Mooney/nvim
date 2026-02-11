return {
  "Pocco81/auto-save.nvim",
  opts = {
    condition = function(buf)
      if vim.bo[buf].filetype == "harpoon" then
        return false
      end
      return true
    end,
  },
}
