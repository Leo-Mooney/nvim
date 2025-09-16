return {
  "nvim-zh/colorful-winsep.nvim",
  config = function ()
    require("colorful-winsep").setup({
      highlight = "#d79921",
      animate = {
        enabled = false
      },
      shift = {},
      progressive = {},
    })
  end
}
