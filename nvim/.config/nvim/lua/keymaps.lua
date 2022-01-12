---------------
--- builtin ---
---------------

-- leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- escape
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- switch buffer
vim.api.nvim_set_keymap('n', 'H', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', ':bnext<CR>', { noremap = true, silent = true })

-- write / quit / source
vim.api.nvim_set_keymap('n', 'W', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'S', ':source $MYVIMRC<CR>', { noremap = true })

---------------
--- plugins ---
---------------

-- packer update
vim.api.nvim_set_keymap('n', '<Leader>u', ':PackerUpdate<CR>', { noremap = true, silent = true })

-- close single buffer
vim.api.nvim_set_keymap('n', '<C-q>', ':BufferClose<CR>', { noremap = true, silent = true })

-- markdown preview
vim.api.nvim_set_keymap('n', '<Leader>gm', ':MarkdownPreview<CR>', { noremap = true, silent = true })

-- fzf-lua
-- search files
vim.api.nvim_set_keymap('n', '<Leader>ff', ":FzfLua files<CR>", { noremap = true, silent = true })
-- search recent files
vim.api.nvim_set_keymap('n', '<Leader>fh', ":FzfLua oldfiles<CR>", { noremap = true, silent = true })
-- search lines in buffers
vim.api.nvim_set_keymap('n', '<Leader>fl', ":FzfLua lines<CR>", { noremap = true, silent = true })
-- search marks
vim.api.nvim_set_keymap('n', '<Leader>fm', ":FzfLua marks<CR>", { noremap = true, silent = true })

-- dashboard
vim.api.nvim_set_keymap('n', '<Leader>fn', ':DashboardNewFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>co', ':edit $MYVIMRC<CR>', { noremap = true, silent = true })

-- file explorer: nvim-tree
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- set offset for buffer: tree.lua
vim.api.nvim_set_keymap('n', '<Leader>e', ":lua require('plug-config.barbar').toggle()<CR>", { noremap = true, silent = true })

-- easymotion
-- s<char><char> or s<char><CR>
vim.api.nvim_set_keymap('n', 's', '<Plug>(easymotion-s2)', { silent = true })

-- lsp
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', { noremap = true, silent = true })

