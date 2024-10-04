vim.g.mapleader = " "

vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Remove highlights" })

-- window movement
vim.keymap.set("n", "<leader>wh", "<C-w>h<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>wl", "<C-w>l<CR>", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>wj", "<C-w>j<CR>", { desc = "Move to window below" })
vim.keymap.set("n", "<leader>wk", "<C-w>k<CR>", { desc = "Move to window above" })
vim.keymap.set("n", "<leader>ww", "<C-w>w<CR>", { desc = "Switch windows" })

-- window splitting
vim.keymap.set("n", "<leader>ws", "<C-w>s<CR>", { desc = "Horizontally slit window" })
vim.keymap.set("n", "<leader>wv", "<C-w>v<CR>", { desc = "Vertically split window" })

-- for plugin-specific keymaps, check plugin file
