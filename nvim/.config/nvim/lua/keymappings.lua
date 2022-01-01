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
vim.api.nvim_set_keymap('n', 'S', ':source $MYVIMRC<CR>', { noremap = true })

-- better navigation for completion
vim.api.nvim_set_keymap('i', '<C-j>', '<C-n>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<C-p>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-j>', '<C-n>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-k>', '<C-p>', { noremap = true })

--- plugins ---
-- packer 
vim.api.nvim_set_keymap('n', '<Leader>u', ':PackerUpdate<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- close single buffer
vim.api.nvim_set_keymap('n', '<C-q>', ':BufferClose<CR>', { noremap = true, silent = true })

-- markdown preview
vim.api.nvim_set_keymap('n', '<Leader>gm', ':MarkdownPreview<CR>', { noremap = true, silent = true })

-- fzf-lua
-- more: https://github.com/ibhagwan/fzf-lua
-- search files
vim.api.nvim_set_keymap('n', '<Leader>ff', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
-- search recent files
vim.api.nvim_set_keymap('n', '<Leader>fh', "<cmd>lua require('fzf-lua').oldfiles()<CR>", { noremap = true, silent = true })
-- search lines in buffers
vim.api.nvim_set_keymap('n', '<Leader>fl', "<cmd>lua require('fzf-lua').lines()<CR>", { noremap = true, silent = true })

-- dashboard
vim.api.nvim_set_keymap('n', '<Leader>nf', ":DashboardNewFile<CR>", { noremap = true, silent = true })
