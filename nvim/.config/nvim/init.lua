if vim.g.vscode then
  require("config-vscode")
else
  require("config")
end

-- colorscheme
vim.cmd.colorscheme("catppuccin")
