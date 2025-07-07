vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


local function arrow_msg(key)
  return function()
    vim.cmd('echo "Use \'' .. key .. '\' instead of arrow keys"')
  end
end

vim.keymap.set({ 'n', 'v' }, '<Up>', arrow_msg('k'), { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<Down>', arrow_msg('j'), { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<Left>', arrow_msg('h'), { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<Right>', arrow_msg('l'), { noremap = true })

-- vim.keymap.set('i', '<Up>', '<C-o>:echo "Use \'k\' instead of Up"<CR>', { noremap = true })
-- vim.keymap.set('i', '<Down>', '<C-o>:echo "Use \'j\' instead of Down"<CR>', { noremap = true })
-- vim.keymap.set('i', '<Left>', '<C-o>:echo "Use \'h\' instead of Left"<CR>', { noremap = true })
-- vim.keymap.set('i', '<Right>', '<C-o>:echo "Use \'l\' instead of Right"<CR>', { noremap = true })


vim.keymap.set('n', '<leader>ks', ':wa<CR>', { desc = 'Save all buffers'})
vim.keymap.set('n', '<leader>kq', ':wqa<CR>', { desc = 'Save all buffers'})

