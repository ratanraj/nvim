require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "lua", "json", "yaml", "bash", "html", "css", "javascript" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

