require('lspsaga').setup({
  outline = {
    layout = 'float',
    auto_close = true,
  },
  ui = {code_action = ''}
})

local lspsaga = require('lspsaga')

vim.keymap.set('n', '<leader>ka', '<cmd>Lspsaga code_action<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>kp', '<cmd>Lspsaga peek_type_definition<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>kg', '<cmd>Lspsaga goto_definition<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>kt', '<cmd>Lspsaga term_toggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ko', '<cmd>Lspsaga outline<CR>', { noremap = true, silent = true })
