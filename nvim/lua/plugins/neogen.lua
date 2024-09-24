return { -- Generates docstrings for me
	{
		"danymat/neogen",
		config = function()
			require("neogen").setup({
				languages = {
					python = {
						template = { annotation_convention = "numpydoc" },
					},
				},
			})
		end,
		version = "*",
		keys = {
			{
				"<Leader>ds",
				":Neogen<CR>",
				mode = { "n" },
				desc = "Generate a [d]oc[s]tring using Neogen",
			},
		},
	},
}
