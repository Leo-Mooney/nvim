local status_mason, mason = pcall(require, "mason")
if not status_mason then
  return
end

local status_mason_lsp, mason_lsp_config = pcall(require, "mason")
if not status_mason_lsp then
  return
end

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then
  return
end

mason.setup()
mason_lsp_config.setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
  }
})
lspconfig.lua_ls.setup{autostart=false}
lspconfig.pyright.setup{autostart=false}
