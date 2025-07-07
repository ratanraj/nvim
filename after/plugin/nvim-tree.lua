require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local nvimtree = require('nvim-tree.api')

vim.keymap.set("n", "<C-n>", nvimtree.tree.toggle, { noremap = tree, silent = true })
vim.keymap.set('n', '<leader>nn', nvimtree.tree.focus, {noremap = tree, silent = true})
