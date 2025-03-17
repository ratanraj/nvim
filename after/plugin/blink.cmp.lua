local blink = require("blink.cmp")

blink.setup({
  keymap = { preset = 'default' }, -- Use default mappings

  appearance = {
    use_nvim_cmp_as_default = true, -- Ensures compatibility with themes
    nerd_font_variant = 'mono' -- Ensures proper icon spacing
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  fuzzy = { implementation = "prefer_rust_with_warning" } -- Use Rust fuzzy matcher
})

