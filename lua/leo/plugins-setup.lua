-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim") 
  use("nvim-lua/plenary.nvim")
  use("christoomey/vim-tmux-navigator")
  use("szw/vim-maximizer")
  use("tpope/vim-surround") 
  use("vim-scripts/ReplaceWithRegister")
  use("numToStr/Comment.nvim")
  use("nvim-tree/nvim-tree.lua")
  use("kyazdani42/nvim-web-devicons")
  use("nvim-lualine/lualine.nvim")
  use("voldikss/vim-floaterm")
  use("Pocco81/auto-save.nvim")
  use("ggandor/leap.nvim")
  use("goolord/alpha-nvim")
  use("nvim-zh/colorful-winsep.nvim")
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use("leo-moooney/kanagawa.nvim")
  use("airblade/vim-gitgutter")

  -- telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })  
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

   -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- configuring lsp servers
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- LSP
  use{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
    -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  if packer_bootstrap then
    require("packer").sync()
  end
end)
