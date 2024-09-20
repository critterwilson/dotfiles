local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.g.noerrorbells = true
vim.g.belloff = "all"
vim.g.tabstop = 4
vim.gsofttabstop = 4
vim.g.shiftwidth = 4
vim.g.expandtab = true
vim.g.hlsearch = true
vim.g.ruler = true
vim.g.foldmethod = "indent"
vim.g.foldlevel = 99
vim.g.encoding = "utf-8"
vim.g.signcolumn = true
vim.g.incsearch = true
vim.g.scrolloff = 12
vim.g.colorcolumn = 120
vim.g.splitbelow = true
vim.g.splitright = true
vim.g.hidden = true
vim.g.undofile = true

require("vim-options")
require("lazy").setup("plugins")
