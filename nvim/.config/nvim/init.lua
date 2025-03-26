---------------
--- general ---
---------------

vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-------------
--- binds ---
-------------
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv") -- moves v-selected line down by 1
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv")   -- moves v-selected line up by 1
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])
vim.g.mapleader = " "

---------------
--- plugins ---
---------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
