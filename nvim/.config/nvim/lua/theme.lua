-- set transparent background
-- vim.api.nvim_command([[
--     autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
-- ]])

-- lualine
require("lualine").setup({
	options = {
		theme = "rose-pine",
	},
})

-- colorschene: rose-pine
require("rose-pine").setup({
	---@usage 'main'|'moon'
	dark_variant = "moon",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,
	---@usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		border = "highlight_med",
		comment = "muted",
		link = "iris",
		punctuation = "subtle",

		error = "love",
		hint = "iris",
		info = "foam",
		warn = "gold",

		headings = {
			h1 = "foam",
			h2 = "love",
			h3 = "gold",
			h4 = "rose",
			h5 = "iris",
			h6 = "pine",
		},
	},
})

-- set colorscheme after options
vim.cmd("colorscheme rose-pine")
-- Set colorscheme after options
vim.cmd([[
    colorscheme rose-pine
    hi BufferOffset guibg=#f
    hi BufferTabpageFill guibg=#f
]])
