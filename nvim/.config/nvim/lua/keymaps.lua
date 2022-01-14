---------------
--- builtin ---
---------------

-- set <space> as leader key
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true
}

-- keymap('n', '\'', '<Plug>(easymotion-prefix)', opt)
-- escape
keymap('i', 'jj', '<ESC>', opt)
-- no hl
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opt)
-- better indenting
keymap('v', '<', '<gv', opt)
keymap('v', '>', '>gv', opt)
-- switch buffer
keymap('n', 'H', ':bprevious<CR>', opt)
keymap('n', 'L', ':bnext<CR>', opt)
-- write / quit / source
keymap('n', 'W', ':w<CR>', opt)
keymap('n', 'Q', ':q<CR>', opt)
-- keymap('n', 'S', ':source $MYVIMRC<CR>', { noremap = true })

---------------
--- plugins ---
---------------

-- packer update
keymap('n', '<Leader>u', ':PackerUpdate<CR>', opt)

-- close single buffer
keymap('n', '<C-q>', ':BufferClose<CR>', opt)

-- markdown preview
keymap('n', '<Leader>gm', ':MarkdownPreview<CR>', opt)

-- dashboard
keymap('n', '<Leader>nf', ':DashboardNewFile<CR>', opt)

-- easymotion
-- s<char><char> or s<char><CR>
keymap('n', 's', '<Plug>(easymotion-s2)', { silent = true })

