return { -- Generate vim sessions automatically in the directories I'm working in
	"rmagatti/auto-session",
	lazy = false,

	opts = {
		allowed_dirs = { "~/Documents/*", "~/.config" },
		suppressed_dirs = { "~/Desktop/*", "~/Downloads/*" },
		-- log_level = 'debug',
	},
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>wr", ":SessionSearch<CR>", desc = "Use AutoSession to Session search" },
		{ "<leader>ws", ":SessionSave<CR>", desc = "Use AutoSession to Save session" },
		{ "<leader>wa", ":SessionToggleAutoSave<CR>", desc = "Use AutoSession to Toggle autosave" },
	},
}
