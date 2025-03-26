return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("n", "<leader>term", ":ToggleTerm<CR>")
	end
}
