return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- keys = {
	-- 	{ "<leader>e", "<cmd>NvimTreeToggle<cr>", "n" },
	-- },
	config = function()
		local tree = require("nvim-tree")
		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")
			-- default mappings
			api.config.mappings.default_on_attach(bufnr)
			-- custom mappings
			vim.keymap.set("n", "<leader>e", function()
				api.tree.toggle({ focus = false })
			end, { desc = "Toggle file tree" })
			vim.keymap.set("n", "<leader>fe", function()
				api.tree.find_file()
			end, { desc = "Find file in file tree" })
		end
		tree.setup({
			on_attach = my_on_attach,
			-- show dotfiles
			-- note: H in normal mode toggles this
			filters = {
				dotfiles = false,
			},
			-- show files in .gitignore
			-- note: I in normal mode toggles this
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
			-- show indent markings
			renderer = {
				indent_markers = {
					enable = true,
				},
				-- show diagnostics in files
			},
			diagnostics = {
				enable = true,
			},
		})
	end,

	-- vim.keymap.set("n", "<leader>e", function()
	-- 	require("nvim-tree"):tree():toggle({ focus = false })
	-- end, { desc = "blahhh tree" }),
}
