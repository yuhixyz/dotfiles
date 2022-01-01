-- configuraions for colorscheme, buffer/tabline, statusline

-- set transparent background
vim.api.nvim_command([[
    autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
]])

-- colorscheme
vim.cmd[[colorscheme palenight]]

-- statusline
require'lualine'.setup()
