require('bufferline').setup{}

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
vim.keymap.set("n", "<leader>qo", ":BufferLineCloseOthers<CR>", {silent = true, desc = 'Close Other Buffers'})
vim.keymap.set("n", "<leader>ql", ":BufferLineCloseLeft<CR>", {silent = true, desc = 'Close Buffers to the left'})
vim.keymap.set("n", "<leader>qr", ":BufferLineCloseRight<CR>", {silent = true, desc = 'Close Buffers to the right'})
