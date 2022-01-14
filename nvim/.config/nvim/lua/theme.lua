-- configuraions for colorscheme, buffer/tabline, statusline

-- set transparent background
vim.api.nvim_command([[
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
]])

-- colorscheme
-- vim.cmd[[colorscheme palenight]]
vim.cmd[[colorscheme rose-pine]]
vim.cmd[[hi BufferOffset guibg=#fffff]]
-- vim.cmd[[colorscheme dracula]]

-- statusline
require('lualine').setup()

