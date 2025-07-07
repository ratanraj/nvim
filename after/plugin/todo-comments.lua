require("todo-comments").setup {
	search = {
		command = "rg",
		args = {
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--glob=!vendor/**",
		},
		pattern = [[\b(KEYWORDS):]],
	}
}


vim.keymap.set('n', '<leader>kc', ':TodoTelescope<CR>', { desc = 'Show TODOs in quickfix list' })
