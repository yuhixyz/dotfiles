require("zen-mode").setup({
	window = {
		backdrop = 1,
		width = 0.85,
		height = 1,
		options = { signcolumn = "no", number = false, cursorline = false },
	},
	plugins = {
		options = { enabled = true, ruler = false, showcmd = false },
		twilight = { enabled = true },
		tmux = { enabled = false },
	},
})
