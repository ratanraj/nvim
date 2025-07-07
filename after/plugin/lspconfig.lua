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
      completeUnimported = true,
    },
  },
}

lspconfig.volar.setup {
  filetypes = { 'vue' },
  init_options = {
    typescript = {
      tsdk = '/home/ratanraj/opt/heroku/lib/node_modules/typescrip/lib' -- change if your global path is different
    }
  },
  root_dir = lspconfig.util.root_pattern('vue.config.js')
}

lspconfig.html.setup{}


lspconfig.jdtls.setup {
  cmd = { 'jdtls' },  -- Make sure it's in your PATH (or provide full path)
  root_dir = lspconfig.util.root_pattern('.git', 'pom.xml', 'build.gradle'),
}

lspconfig.ccls.setup {
	cmd = {'ccls'},
	filetypes = {'c', 'cpp', 'objc', 'objcpp', 'cuda', 'h'}
}

vim.keymap.set("n", "<leader>kf", function()
  vim.lsp.buf.format()
end, { desc = "Format Go file" })

