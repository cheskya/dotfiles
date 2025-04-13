return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy", -- Or `LspAttach`
	config = function()
		require("tiny-inline-diagnostic").setup({
			options = {
				multiple_diag_under_cursor = true,
				show_all_diags_on_cursorline = true,
				show_source = true,
			},
		})
	end,
}
