vim.lsp.config('pyright', {})

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
})

vim.lsp.config('gopls', {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  -- root_dir = vim.lsp.util.root_pattern("go.work", "go.mod", ".git"),
  -- root_markers = {'go.work', 'go.mod', '.git', 'Gopkg.toml'},
  settings = {
    gopls = {
      workspaceFiles = {
          "**/BUILD",
          "**/WORKSPACE",
          "**/*.{bzl, bazel}",
      },
      env = {
          GOPACKAGESDRIVER = './tools/gopackagesdriver.sh'
      },
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      usePlaceholders = true,
      completeUnimported = true,
    },
  },
})

vim.lsp.config('volar', {
  filetypes = { 'vue' },
  init_options = {
    typescript = {
      tsdk = '/home/ratanraj/opt/heroku/lib/node_modules/typescrip/lib' -- change if your global path is different
    }
  },
  -- root_dir = lspconfig.util.root_pattern('vue.config.js')
  root_markers = {'vue.config.js'}
})

vim.lsp.config('html', {})


vim.lsp.config('jdtls', {
  cmd = { 'jdtls' },  -- Make sure it's in your PATH (or provide full path)
  -- root_dir = lspconfig.util.root_pattern('.git', 'pom.xml', 'build.gradle'),
  root_markers = {'.git', 'pom.xml', 'build.gradle'}
})

vim.lsp.config('ccls', {
	cmd = {'ccls'},
	filetypes = {'c', 'cpp', 'objc', 'objcpp', 'cuda', 'h'}
})

vim.keymap.set("n", "<leader>kf", function()
  vim.lsp.buf.format()
end, { desc = "Format Go file" })

