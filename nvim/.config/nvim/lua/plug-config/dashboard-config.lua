-- references: https://github.com/glepnir/dashboard-nvim/issues/7
vim.g.dashboard_custom_section = {
	a = { description = { " Find File                   leader ff" }, command = "FzfLua files" },
	b = { description = { " Search History              leader fh" }, command = "FzfLua oldfiles" },
	c = { description = { " Vimwiki                     leader ww" }, command = "VimwikiIndex" },
	d = { description = { " Configuration               leader cn" }, command = "e ~/.config/nvim/init.lua" },
	e = { description = { " New File                             " }, command = "DashboardNewFile" },
	f = { description = { " Update Plugins                       " }, command = "PackerUpdate" },
}

vim.g.dashboard_custom_header = {
	"                                   ",
	"                                   ",
	"                                   ",
	"          ▀████▀▄▄              ▄█ ",
	"            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
	"    ▄        █          ▀▀▀▀▄  ▄▀  ",
	"   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
	"  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
	"  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
	"   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
	"    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
	"   █   █  █      ▄▄           ▄▀   ",
	"                                   ",
	"                                   ",
	"                                   ",
}

vim.g.dashboard_custom_footer = {
	"We'll find a way; we always have.",
}
