-- references:
-- https://github.com/williamboman/nvim-lsp-installer#setup
-- https://zhuanlan.zhihu.com/p/444836713
local lsp_installer = require("nvim-lsp-installer")

local servers = {
    sumneko_lua = require("lsp.lua"), -- /lua/lsp/lua.lua
    jedi_language_server = require("lsp.python"),
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

lsp_installer.on_server_ready(function(server)
    local opts = servers[server.name]
    if opts then
        server:setup(opts)
    end
end)

