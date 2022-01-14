local wk = require("which-key")
wk.setup{
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
          operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
          motions = false, -- adds help for motions
          text_objects = false, -- help for text objects triggered after entering an operator
          windows = false, -- default bindings on <c-w>
          nav = false, -- misc bindings to work with windows
          z = false, -- bindings for folds, spelling and others prefixed with z
          g = false, -- bindings for prefixed with g
        },
    },
}

local mappings = {
    e = {":lua require('plug-config.barbar-config').toggle()<CR>", "Explorer"},
    w = {
        name = "Vimwiki",
    },
    c = {
        name = "Config",
        n = {":e ~/.config/nvim/init.lua<cr>", "edit nvim"},
        t = {":e ~/.tmux.conf<cr>", "edit tmux"},
        y = {":e ~/.config/yabai/yabairc<cr>", "edit yabai"},
        s = {":e ~/.config/skhd/skhdrc<cr>", "edit skhd"},
        b = {":e ~/.config/sketchybar/sketchybarrc<cr>", "edit sketchybar"},
    },
    f = {
        name = "FzfLua",
        a = {":FzfLua<cr>", "all commands"},
        f = {":FzfLua files<cr>", "find file"},
        h = {":FzfLua oldfiles<cr>", "recent files"},
        b = {":FzfLua marks<cr>", "bookmarks"},
    },
    l = {
        name = "LSP",
        s = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
        t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
        d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
        D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
        r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
    },
}

local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
