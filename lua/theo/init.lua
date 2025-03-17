vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true


require("theo.remap")
require("theo.config.lazy")

--require("gruvbox").setup({ contrast = "medium" })
--vim.cmd("colorscheme gruvbox")

vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
