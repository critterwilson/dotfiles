return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ruff.setup({ capabilities = capabilities }) -- python LSP (really good, IMO)
			lspconfig.jedi_language_server.setup({ capabilities = capabilities })
			lspconfig.terraformls.setup({ capabilities = capabilities }) -- terraform support (run brew install hashicorp/tap/terraform-ls)
		end,
		keys = {
			{
				"K",
				vim.lsp.buf.hover,
				mode = { "n" },
				desc = "Provide LSP insight for cursor location",
			},
			{
				"<leader>gd",
				vim.lsp.buf.definition,
				mode = { "n" },
				desc = "Provide LSP [d]efinition for cursor location",
			},
			{
				"<leader>gr",
				vim.lsp.buf.references,
				mode = { "n" },
				desc = "Provide LSP [r]eferences for cursor location",
			},
			{
				"<leader>ca",
				vim.lsp.buf.code_action,
				mode = { "n" },
				desc = "Provide LSP [c]ode [a]ctions for cursor location",
			},
			{
				"]g",
                vim.lsp.diagnostic.goto_next,
				mode = { "n" },
				desc = "Go to the line of the next diagnostic",
			},
			{
				"[g",
                vim.lsp.diagnostic.goto_prev,
				mode = { "n" },
				desc = "Go to the line of the previous diagnostic",
			},
		},
	},
}
