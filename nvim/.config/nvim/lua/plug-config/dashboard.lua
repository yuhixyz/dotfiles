-- references: https://github.com/glepnir/dashboard-nvim/issues/7
vim.g.dashboard_custom_section = {
    a = {description = {" Find File                   leader ff"}, command = "Files"},
    b = {description = {" Search History              leader fh"}, command = "History"},
    c = {description = {" Bookmarks                   leader fb"}, command = "Marks"},
    d = {description = {" Vimwiki                     leader ww"}, command = "VimwikiIndex"},
    e = {description = {" Configuration               leader co"}, command = "edit $MYVIMRC"},
    f = {description = {" New File                    leader nf"}, command = "DashboardNewFile"},
    g = {description = {" Update Plugins              leader uu"}, command = "PackerUpdate"},
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

