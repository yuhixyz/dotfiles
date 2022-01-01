-- https://www.reddit.com/r/neovim/comments/pl0p5v/shortcut_to_open_lua_require_file/
vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')
