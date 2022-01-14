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
    e = {":lua require('plug-config.barbar-config').toggle()<CR>", "Open Explorer"},
    x = {":BufferClose<cr>", "Close Current Buffer"},
    h = {":set hlsearch!<cr>", "Toggle Highlight"},
    m = {":MarkdownPreview<cr>", "Markdown Preview"},
    w = {
        name = "Vimwiki",
    },
    c = {
        name = "Config",
        n = {":e ~/.config/nvim/init.lua<cr>", "Edit nvim"},
        t = {":e ~/.tmux.conf<cr>", "edit tmux"},
        y = {":e ~/.config/yabai/yabairc<cr>", "Edit yabai"},
        s = {":e ~/.config/skhd/skhdrc<cr>", "Edit skhd"},
        b = {":e ~/.config/sketchybar/sketchybarrc<cr>", "Edit sketchybar"},
    },
    f = {
        name = "FZF",
        a = {":FzfLua<cr>", "All Commands"},
        f = {":FzfLua files<cr>", "Find File"},
        h = {":FzfLua oldfiles<cr>", "Recent Files"},
        l = {":FzfLua lines<cr>", "Search Text in Buffers"},
        b = {":FzfLua marks<cr>", "Bookmarks"},
    },
    l = {
        name = "LSP",
        s = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
        t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
        d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
        D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
        r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
        h = {'<cmd>Lspsaga hover_doc<cr>', "Hover Doc"},
        R = {'<cmd>Lspsaga rename<cr>', "Rename"},
        a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
        e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
        n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
        N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Prev Diagnostic"},
    },
}

local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
