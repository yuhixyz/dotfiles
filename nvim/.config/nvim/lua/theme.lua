-- configuraions for colorscheme, buffer/tabline, statusline

-- set transparent background
vim.api.nvim_command([[
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
]])

-- colorscheme
vim.cmd([[
    colorscheme nord
    hi BufferOffset guibg=#f
    hi BufferTabpageFill guibg=#f
]])
-- vim.cmd[[colorscheme palenight]]
-- vim.cmd[[colorscheme dracula]]
-- statusline
require("lualine").setup({
	options = {
		theme = "nord",
	},
})
