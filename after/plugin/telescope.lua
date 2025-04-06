local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "vendor/" },
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope find buffers'})

