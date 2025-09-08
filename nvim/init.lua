-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.opt.number = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.cursorline = true
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>q', ':quit<CR>')
require("lazy").setup({
  spec = {
		  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
		  {"ellisonleao/gruvbox.nvim"},
		  {"stevearc/oil.nvim"},
		  {"echasnovski/mini.pick"},
		  {"neovim/nvim-lspconfig"},
		  {"mason-org/mason.nvim", opts = {}},
		  {"vim-airline/vim-airline"},
		  {"vim-airline/vim-airline-themes"},
		  {"rstacruz/vim-closer"},
		  {"ryanoasis/vim-devicons"},
		  {"hrsh7th/nvim-cmp"},
		  {"hrsh7th/cmp-nvim-lsp"},
		  {"hrsh7th/cmp-vsnip"},
		  {"hrsh7th/vim-vsnip"},
		  {"L3MON4D3/LuaSnip"},
  },
  install = { colorscheme = { "gruvbox" } },
  checker = { enabled = true },
})

require "mini.pick".setup()
require "oil".setup()
vim.cmd("colorscheme gruvbox")

vim.keymap.set('n', '<leader>f', ':Pick files')
