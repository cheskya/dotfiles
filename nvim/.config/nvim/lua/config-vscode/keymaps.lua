vim.g.mapleader = " "

vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Remove highlights" })

-- vscode - bug fixing
vim.keymap.set({"n", "v"}, "<leader>bb", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
vim.keymap.set({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
vim.keymap.set({"n", "v"}, "<leader>nqa", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")

-- vscode - searching
vim.keymap.set({"n", "v"}, "<leader>fg", "<cmd>lua require('vscode').action('actions.find')<CR>")
vim.keymap.set({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('settings.action.search')<CR>")

-- vscode - formatting
vim.keymap.set({"n", "v"}, "<leader>mp", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")

-- vscode - sidebar
vim.keymap.set({"n", "v"}, "<leader>bt", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>", { desc = "Toggle sidebar" })
vim.keymap.set({"n", "v"}, "<leader>bf", "<cmd>lua require('vscode').action('workbench.action.focusSideBar')<CR>", { desc = "Toggle sidebar" })

-- vscode - window splitting
vim.keymap.set("n", "<leader>wv", "<cmd>lua require('vscode').action('workbench.action.splitEditorRight')<CR>", { desc = "Horizontally slit window" })
vim.keymap.set("n", "<leader>ws", "<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<CR>", { desc = "Vertically split window" })

-- vscode - window movement (if split)
vim.keymap.set("n", "<leader>wh", "<cmd>lua require('vscode').action('workbench.action.navigateLeft')<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>wl", "<cmd>lua require('vscode').action('workbench.action.navigateRight')<CR>", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>wj", "<cmd>lua require('vscode').action('workbench.action.navigateDown')<CR>", { desc = "Move to window below" })
vim.keymap.set("n", "<leader>wk", "<cmd>lua require('vscode').action('workbench.action.navigateUp')<CR>", { desc = "Move to window above" })

-- vscode - window movement
vim.keymap.set("n", "<leader>wn", "<cmd>lua require('vscode').action('workbench.action.nextEditorInGroup')<CR>", { desc = "Move to next window in group" })
vim.keymap.set("n", "<leader>wp", "<cmd>lua require('vscode').action('workbench.action.previousEditorInGroup')<CR>", { desc = "Move to previous window in group" })

-- vscode - save windows
vim.keymap.set("n", "<leader>sw", "<cmd>lua require('vscode').action('workbench.action.files.save')<CR>", { desc = "Save current window" })
vim.keymap.set("n", "<leader>sa", "<cmd>lua require('vscode').action('workbench.action.files.saveAll')<CR>", { desc = "Save all modified windows" })

-- vscode - close windows
vim.keymap.set("n", "<leader>qw", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>", { desc = "Close current window" })
vim.keymap.set("n", "<leader>qo", "<cmd>lua require('vscode').action('workbench.action.closeOtherEditors')<CR>", { desc = "Close all windows besides current window" })
vim.keymap.set("n", "<leader>qa", "<cmd>lua require('vscode').action('workbench.action.closeAllEditors')<CR>", { desc = "Close all windows" })

-- for plugin-specific keymaps, check plugin file
