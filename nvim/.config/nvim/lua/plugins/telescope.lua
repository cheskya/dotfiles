return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<CR>" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>" },
		{ "<leader>fh", "<cmd>Telescope help_tags<CR>" },
		{ "<leader>fx", "<cmd>Telescope diagnostics<CR>" },
	},
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true
        }
      }
    })
  end
}
