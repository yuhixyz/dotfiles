lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "everforest"
lvim.transparent_window = true
vim.opt.spell = false
vim.opt.spelllang = "cjk"

-- auto change input method to US when leaving insert mode
vim.cmd([[
    autocmd InsertLeave * :silent !im-select com.apple.keylayout.US
]])

-- vim-sneak
vim.cmd [[
  let g:sneak#label = 1
]]

lvim.leader = "space"
lvim.keys.insert_mode = {
  -- custom
  ["jj"] = "<esc>",
  -- remove defaults
  ["jk"] = false,
  ["kj"] = false,
  ["<A-j>"] = false,
  ["<A-k>"] = false,
  ["<A-Up>"] = false,
  ["<A-Down>"] = false,
  ["<A-Left>"] = false,
  ["<A-Right>"] = false,
}

lvim.keys.normal_mode = {
  -- custom
  -- Save or Quit
  ["W"] = ":w<cr>",
  ["Q"] = ":q<cr>",
  ["<C-n>"] = ":nohlsearch<cr>",
  -- Tab switch buffer
  ["<S-l>"] = ":BufferLineCycleNext<CR>",
  ["<S-h>"] = ":BufferLineCyclePrev<CR>",
  -- QuickFix
  ["]q"] = ":cnext<CR>",
  ["[q"] = ":cprev<CR>",
  ["<C-q>"] = ":call QuickFixToggle()<CR>",
  -- remove defaults
  ["<C-h>"] = false,
  ["<C-j>"] = false,
  ["<C-k>"] = false,
  ["<C-l>"] = false,
  ["<C-Up>"] = false,
  ["<C-Down>"] = false,
  ["<C-Left>"] = false,
  ["<C-Right>"] = false,
  ["<A-j>"] = false,
  ["<A-k>"] = false,
}
lvim.keys.term_mode = {
  -- custom
  -- Terminal window navigation
  ["<C-j>"] = "<C-\\><C-N><C-w>j",
  ["<C-k>"] = "<C-\\><C-N><C-w>k",
  -- remove defaults
  ["<C-h>"] = false,
  ["<C-l>"] = false,
}
lvim.keys.visual_mode = {
  -- Better indenting
  ["<"] = "<gv",
  [">"] = ">gv",
}
lvim.keys.visual_block_mode = {
  -- remove defaults
  ["K"] = false,
  ["J"] = false,
  ["<A-j>"] = false,
  ["<A-k>"] = false,
}
lvim.keys.command_mode = {
  ["<C-j>"] = { 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true } },
  ["<C-k>"] = { 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true } },
}

-- whichkey
lvim.builtin.which_key.mappings["x"] = { "<cmd>BufferKill<cr>", "Close Buffer" }
lvim.builtin.which_key.mappings["c"] = {
  name = "Config",
  n = { ":e ~/.config/nvim/init.lua<cr>", "Edit nvim" },
  t = { ":e ~/.tmux.conf<cr>", "edit tmux" },
  y = { ":e ~/.config/yabai/yabairc<cr>", "Edit yabai" },
  s = { ":e ~/.config/skhd/skhdrc<cr>", "Edit skhd" },
  b = { ":e ~/.config/sketchybar/sketchybarrc<cr>", "Edit sketchybar" },
  z = { ":e ~/.zshrc<cr>", "Edit zsh" },
  a = { ":e ~/.config/alacritty/alacritty.yml<cr>", "Edit alacritty" },
  k = { ":e ~/.config/kitty/kitty.conf<cr>", "Edit kitty" },
}

-- telescope config
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope = {
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close,
        ["<cr>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.telescope.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = false
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.execs = {} -- override default lazygit keymap

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
lvim.lsp.automatic_servers_installation = true

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skiipped for the current filetype
-- vim.tbl_map(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  { "sainnhe/everforest" },
  { "kana/vim-textobj-user" },
  { "kana/vim-textobj-entire" },
  { "justinmk/vim-sneak" },
  { "tpope/vim-surround" },
  { "NikoKS/kitty-vim-tmux-navigator" },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
