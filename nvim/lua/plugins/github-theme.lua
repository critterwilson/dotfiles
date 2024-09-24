return {
	"projekt0n/github-nvim-theme",
	name = "github-theme",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("github-theme").setup({
			options = {
				-- Compiled file's destination location
				hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
				hide_nc_statusline = true, -- Override the underline style for non-active statuslines
				transparent = true, -- make neovim's background transparent
			},
		})

		vim.cmd("colorscheme github_dark_dimmed")
	end,
    -- TODO
}
