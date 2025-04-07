require('precognition').setup({
  startVisible = false
})


vim.keymap.set('n', '<C-p>', function() require('precognition').peek() end, {desc = 'Peek precognition hints'})

