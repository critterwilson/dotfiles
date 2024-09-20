return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.mypy, -- allows for static type checking in python
				null_ls.builtins.formatting.isort, -- sorts python imports
				null_ls.builtins.formatting.stylua, -- formatting for lua files
				null_ls.builtins.code_actions.gitsigns, -- code actions for gitsigns extension
				null_ls.builtins.code_actions.proselint, -- linting for regular text
        null_ls.builtins.completion.luasnip, -- snippet support for lua
        null_ls.builtins.diagnostics.markdownlint -- checks markdown syntax
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
