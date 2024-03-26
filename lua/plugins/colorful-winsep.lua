return {
  "nvim-zh/colorful-winsep.nvim",
  config = function ()
    require("colorful-winsep").setup({
      highlight = {
        bg = "#16161E",
        fg = "#C8C093",
      },
    })
  end
}
