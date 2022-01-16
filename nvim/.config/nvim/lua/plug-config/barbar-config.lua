-- set offset for barbar
-- https://github.com/romgrk/barbar.nvim/issues/177
local tree = {}
local g = vim.g
-- Explicitly set the nvim tree width
g.nvim_tree_width = 30
local tree_width = g.nvim_tree_width
tree.toggle = function()
	require("nvim-tree").toggle()
	if require("nvim-tree.view").win_open() then
		require("bufferline.state").set_offset(tree_width + 1, "File Explorer")
		require("nvim-tree").find_file(true)
	else
		require("bufferline.state").set_offset(0)
	end
end

return tree
