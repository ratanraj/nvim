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
vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = 'Telescope find buffers'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


vim.keymap.set('n', '<leader>fl', builtin.lsp_references, { desc = 'Telescope LSP References' })
