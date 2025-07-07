vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.number = true          -- enable absolute line numbers
vim.opt.relativenumber = true  -- optional: enable relative line numbers

vim.opt.clipboard = "unnamedplus"

require("theo.remap")
require("theo.config.lazy")

-- require("gruvbox").setup({ contrast = "medium" })
-- vim.cmd("colorscheme gruvbox")

vim.opt.background = "dark" -- set this to dark or light
-- vim.cmd("colorscheme oxocarbon")
vim.cmd("colorscheme monokai")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "vue", "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

