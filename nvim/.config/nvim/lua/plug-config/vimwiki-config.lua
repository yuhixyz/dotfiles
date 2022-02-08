vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {
	{
		path = "~/vimwiki/",
		syntax = "markdown",
		ext = ".md",
	},
}
vim.g.vimwiki_markdown_link_ext = 1
vim.g.vimwiki_conceallevel = 2
vim.cmd([[
    autocmd FileType vimwiki setlocal shiftwidth=2 tabstop=2 
]])
