local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}

lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {},
  },
}

lspconfig.gopls.setup{
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      usePlaceholders = true,
    },
  },
}




