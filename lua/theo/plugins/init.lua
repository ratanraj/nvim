return {
  {'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = {'nvim-lua/plenary.nvim'}},
  {'nvim-tree/nvim-tree.lua'},
  {'neovim/nvim-lspconfig'},
  {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
  {'ellisonleao/gruvbox.nvim'},
  {'nyoom-engineering/oxocarbon.nvim'},
  {'saghen/blink.cmp', dependencies = {'rafamadriz/friendly-snippets'}, version = '*', lazy = true},
  {'sschleemilch/slimline.nvim'},
  {'lewis6991/gitsigns.nvim'},
  {'nvimdev/lspsaga.nvim'},
}
