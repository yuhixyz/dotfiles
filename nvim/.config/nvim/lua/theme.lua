-- configuraions for colorscheme, buffer/tabline, statusline

-- set transparent background
vim.api.nvim_command([[
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
]])

-- colorscheme
-- vim.cmd[[colorscheme palenight]]
vim.cmd[[
    colorscheme rose-pine
    hi BufferOffset guibg=#f
    hi BufferTabpageFill guibg=#f
]]
-- vim.cmd[[colorscheme dracula]]

-- statusline
require('lualine').setup()

