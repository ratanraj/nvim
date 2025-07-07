
require('yeet').setup({})

vim.keymap.set("n", "\\\\", function()
	require("yeet").execute(
		
	)
end)

vim.keymap.set("n", "<leader>\\", function()
	require("yeet").list_cmd()
end)


