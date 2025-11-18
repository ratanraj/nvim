local gitsigns = require('gitsigns')
gitsigns.setup()

vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Preview hunk'})
vim.keymap.set('n', '<leader>gi', gitsigns.preview_hunk_inline, { desc = 'Preview hunk inline'})
