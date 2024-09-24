return {
	"mrjones2014/legendary.nvim",
	priority = 10000,
	config = function()
		require("legendary").setup({ extensions = { lazy_nvim = true } })
	end,
	keys = {
		{
			"<Leader>hh",
			":Legendary<CR>",
			mode = { "n" },
			desc = "Show all keymaps through [l]egendary extension",
		},
		---------------------------
		-- GENERAL
		---------------------------
		{
			"jj",
			"<ESC>",
			mode = { "!" },
			desc = "Back to normal mode",
		},
		{
			"H",
			"^",
			mode = { "n", "v" },
			desc = "Jump to first character in line",
		},
		{
			"L",
			"$",
			mode = { "n", "v" },
			desc = "Jump to last character in line",
		},
		{
			"ff",
			"za",
			mode = { "n" },
			desc = "[f]old/un[f]old the current block",
		},
		{
			"<leader>w",
			":w<CR>",
			mode = { "n" },
			desc = "Save the current buffer",
		},
		{
			"<leader>qa",
			":wqa<CR>",
			mode = { "n" },
			desc = "Save and quit all buffers",
		},
		{
			"<leader>q",
			":wq<CR>",
			mode = { "n" },
			desc = "Save and quit the current buffer",
		},
		{
			"tt",
			":bel term<CR>",
			mode = { "n" },
			desc = "Open a terminal is a horizontal split",
		},
		---------------------------
		-- WINDOW/TAB NAVIGATION
		---------------------------
		{
			"<leader>b",
			"<C-^>",
			mode = { "n" },
			desc = "Navigate [b] to the previous buffer",
		},
		{
			"<leader>ws",
			":split<CR>",
			mode = { "n" },
			desc = "[s]plit the [w]indow horizontally",
		},
		{
			"<leader>wv",
			":vsplit<CR>",
			mode = { "n" },
			desc = "split the [w]indow [v]ertically",
		},
		{
			"<leader>tn",
			":tabnew<CR>",
			mode = { "n" },
			desc = "Creates a [n]ew [t]ab",
		},
		{
			"<leader>tc",
			":tabc<CR>",
			mode = { "n" },
			desc = "[c]loses current [t]ab",
		},
		{
			"<leader>to",
			":tabo<CR>",
			mode = { "n" },
			desc = "Closes all except current [t]ab",
		},
		{
			"<leader>l",
			":tabn<CR>",
			mode = { "n" },
			desc = "Navigates to the next tab",
		},
		{
			"<leader>h",
			":tabp<CR>",
			mode = { "n" },
			desc = "Navigates to the previous tab",
		},
		{
			"<C-h>",
			"<C-w><C-h>",
			mode = { "n" },
			desc = "Navigate window left",
		},
		{
			"<C-j>",
			"<C-w><C-j>",
			mode = { "n" },
			desc = "Navigate window down",
		},
		{
			"<C-k>",
			"<C-w><C-k>",
			mode = { "n" },
			desc = "Navigate window up",
		},
		{
			"<C-l>",
			"<C-w><C-l>",
			mode = { "n" },
			desc = "Navigate window right",
		},
		{
			"<C-y>",
			":vertical resize +3<CR>",
			mode = { "n" },
			desc = "Resise left",
		},
		{
			"<C-u>",
			":resize +3<CR>",
			mode = { "n" },
			desc = "Resise down",
		},
		{
			"<C-i>",
			":resize -3<CR>",
			mode = { "n" },
			desc = "Resise up",
		},
		{
			"<C-o>",
			":vertical resize -3<CR>",
			mode = { "n" },
			desc = "Resise right -3",
		},
		{
			"<C-h>",
			"<C-\\><C-n><C-h>",
			mode = { "t" },
			desc = "Navigate window left (from terminal)",
		},
		{
			"<C-j>",
			"<C-\\><C-n><C-j>",
			mode = { "t" },
			desc = "Navigate window down (from terminal)",
		},
		{
			"<C-k>",
			"<C-\\><C-n><C-k>",
			mode = { "t" },
			desc = "Navigate window up (from terminal)",
		},
		{
			"<C-l>",
			"<C-\\><C-n><C-l>",
			mode = { "t" },
			desc = "Navigate window right (from terminal)",
		},
	},
}
