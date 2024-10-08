return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    -- window width
    vim.g.undotree_SplitWidth = 29
    -- when opening undo tree, focus on it
    vim.g.undotree_SetFocusWhenToggle = 1
    -- use short time indicators
    vim.g.undotree_ShortIndicators = 1
	end,
}
