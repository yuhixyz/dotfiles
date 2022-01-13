-- references:
-- https://github.com/williamboman/nvim-lsp-installer#setup
-- https://zhuanlan.zhihu.com/p/444836713
local lsp_installer = require("nvim-lsp-installer")

local servers = {
    sumneko_lua = require("lsp.lua"), -- /lua/lsp/lua.lua
    jedi_language_server = require("lsp.python"),
    zk = require("lsp.markdown"),
    rust_analyzer = require("lsp.rust"),
}

-- auto install languageservers
for name, _ in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
            print("Installing " .. name .. "successfully")
        end
    end
end

-- config
lsp_installer.on_server_ready(function(server)
    local opts = servers[server.name]
    if opts then
        opts.on_attach = function(_, bufnr)
            local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
            buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', { noremap = true, silent = true })
            buf_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', { noremap = true, silent = true })
            buf_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', { noremap = true, silent = true })
            buf_set_keymap('n', 'gh', ':lua vim.lsp.buf.hover()<cr>', { noremap = true, silent = true })
        end
        opts.flags = {
            debounce_text_changes = 150,
        }
        server:setup(opts)
    end
end)

