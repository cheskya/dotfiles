vim.g.mapleader = " "

vim.keymap.set("n", "<Tab>", vim.cmd.tabn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.tabp)

vim.keymap.set("n", "<Leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<Leader>tc", vim.cmd.close)
-- for plugin-specific keymaps, check plugin file
