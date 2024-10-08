-- disable netrw for file tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- show tabline even if only one tab is open
-- on tabline, show the relative path to the current file
vim.opt.showtabline = 2
vim.opt.tabline = "%f"

-- disable showing all diagnostics in current buffer
vim.diagnostic.config({ virtual_text = false })

-- change tabs to 2 spaces
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- auto-indenting and smart-indenting
vim.opt.autoindent = true
vim.opt.smartindent = true

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- disable line wrapping
vim.opt.wrap = false

-- enable persistent undo history
vim.opt.undofile = true

-- enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end
