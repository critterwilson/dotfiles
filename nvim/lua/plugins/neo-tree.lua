return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup()
	end,
	keys = {
		{
			"<leader>nn",
			":Neotree filesystem reveal left<CR>",
			mode = { "n" },
			desc = "Show [n]eotree filesystem",
		},
	},
}
