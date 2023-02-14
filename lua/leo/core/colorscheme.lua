local status, kanagawa = pcall(require, "kanagawa")
if not status then
  print("Colorscheme not found!")
  return
end
kanagawa.setup({
  transparent = true,
})
vim.cmd("colorscheme kanagawa")
