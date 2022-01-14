-- set <space> as leader key
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- escape
keymap('i', 'jj', '<ESC>', opt)
-- better indenting
keymap('v', '<', '<gv', opt)
keymap('v', '>', '>gv', opt)
-- switch buffer
keymap('n', 'H', ':bprevious<CR>', opt)
keymap('n', 'L', ':bnext<CR>', opt)
-- write / quit
keymap('n', 'W', ':w<CR>', opt)
keymap('n', 'Q', ':q<CR>', opt)

