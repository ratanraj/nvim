require('precognition').setup({
  startVisible = false
})


vim.keymap.set('n', '<C-p>', function() require('precognition').toggle() end, {desc = 'Peek precognition hints'})

