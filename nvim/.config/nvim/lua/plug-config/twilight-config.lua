require("twilight").setup({
	{
		dimming = { alpha = 1, color = { "Normal", "#ffffff" }, inactive = true },
		-- context = 10,
		treesitter = true,
		expand = { "function", "method", "table", "if_statement" },
	},
})
