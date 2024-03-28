return {
  "nvim-zh/colorful-winsep.nvim",
  config = function ()
    require("colorful-winsep").setup({
      hi = {
        bg = "#16161E",
        fg = "#D79921",
      },
      smooth = false,
    })
  end
}
