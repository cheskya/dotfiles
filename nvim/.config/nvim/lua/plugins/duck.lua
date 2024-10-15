return {
	"tamton-aquib/duck.nvim",
	config = function()
		vim.keymap.set("n", "<leader>dd", function()
			require("duck").hatch()
		end, { desc = "Hatch a duck!" })
		vim.keymap.set("n", "<leader>dk", function()
			require("duck").cook()
		end, { desc = "Goodbye duck...! "})
		vim.keymap.set("n", "<leader>da", function()
			require("duck").cook_all()
		end, { desc = "Goodbye ducks...!" })
	end,
}
