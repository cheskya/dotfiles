return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = true,
			view_options = {
				show_hidden = true,
				no_ignore = true,
				no_ignore_parent = false,
			},
			keymaps = {
				["<Esc>"] = { callback = "actions.close", mode = "n" },
			},
		})

		-- open parent directory in window
		vim.keymap.set("n", "-", "<Cmd>Oil<CR>", { desc = "Open parent directory in window" })

		-- open parent directory in floating window
		vim.keymap.set("n", "<leader>-", oil.toggle_float, { desc = "Open parent directory in floating window" })
	end,
}
