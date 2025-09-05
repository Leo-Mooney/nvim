return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "rust_analyzer"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.rust_analyzer.setup(
        {
          settings = {
            ['rust-analyzer'] = {
                check = {
                    command = "clippy";
                },
                cargo = {
                  target = nil,
                  features = "all",
                  loadOutDirsFromCheck = false,
                },
                workspace = {
                  symbol = {
                    search = {
                      scope = "workspace",  -- or "project"
                    },
                  },
                },
                diagnostics = {
                    enable = true;
                },
                procMacro = {
                  enable = false,
                },
                files = {
                  excludeDirs = { "target", ".git", ".cargo" },
              },
            }
          }
        }
      )
    end
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "black",
          "stylua",
          "isort",
        },
      })
    end,
  },
}
